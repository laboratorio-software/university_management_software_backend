from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework.response import Response
from rest_framework.permissions import AllowAny, IsAuthenticated
from rest_framework.decorators import action
from django.contrib.auth import login, logout
from rest_framework import viewsets
from rest_framework import status
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.user import UserProfile
from ..serializers.user import UserProfileSerializer, DjangoUserSerializer
import logging

logger = logging.getLogger("django")


@extend_schema_view(
    list=extend_schema(
        summary='Obtener una lista de objetos',
        responses={200: UserProfileSerializer(many=True)},
    ),
    create=extend_schema(
        summary='Crear un nuevo objeto',
        request=UserProfileSerializer,
        responses={201: UserProfileSerializer},
    ),
    retrieve=extend_schema(
        summary='Obtener un objeto por ID',
        responses={200: UserProfileSerializer},
    ),
    update=extend_schema(
        summary='Actualizar un objeto por ID',
        request=UserProfileSerializer,
        responses={200: UserProfileSerializer},
    ),
    partial_update=extend_schema(
        summary='Actualizar parcialmente un objeto por ID',
        request=UserProfileSerializer,
        responses={200: UserProfileSerializer},
    ),
    destroy=extend_schema(
        summary='Eliminar un objeto por ID',
        responses={204: None},
    ),
    post=extend_schema(
        summary='Cerrar sesión',
        responses={205: None, 400: None},
    ),

)
class UserProfileViewSet(viewsets.ModelViewSet):
    queryset = UserProfile.objects.all()
    serializer_class = UserProfileSerializer
    permission_classes = []
    lookup_field = "identification_number"

    def get_permissions(self):
        if self.action == 'create':
            permission_classes = [AllowAny]
        else:
            permission_classes = [IsAuthenticated]
        return [permission() for permission in permission_classes]

    def create(self, request):
        """
        Request format should look like this:
        {
            "profile": {
                "profile_field_1": "profile_field_1_value",
                "profile_field_2": "profile_field_2_value",
                ...
                "user": {
                "password": "password",
                "email": "email",
                "},
                ...
                "profile_field_3": "profile_field_3_value",
                "profile_field_4": "profile_field_4_value"
            }
        }
        """
        profile = request.data
        logger.info("User to sign: %s", profile["user"]["email"])
        # Separate the profile data from the credential data
        credentials = profile.pop("user")
        credentials["username"] = profile["identification_number"]
        # Serialize credentials data and send new user id to profile data to create the user profile
        credentials_serializer = DjangoUserSerializer(data=credentials)
        if credentials_serializer.is_valid():
            logger.info("Credentials data is valid")
        else:
            logger.info(
                f"Credentials Serializer errors: {credentials_serializer.errors}")

        # Create the user in User model
        credentials_obj = credentials_serializer.save()
        profile["user"] = credentials_obj.id
        # Serialize profile data
        profile_serializer = self.get_serializer(data=profile)
        if profile_serializer.is_valid():
            logger.info("Profile data is valid")
        else:
            logger.info(
                f"Profile Serializer errors: {profile_serializer.errors}")

        # Trying to create user and profile at the same time, but it gives an user_id error
        # user_serializer = self.get_serializer(data=user)
        # if user_serializer.is_valid():
        #     logger.info("User data is valid: %s", user_serializer)
        # else:
        #     logger.info(
        #         f"User(profile, credentials) Serializer errors: {user_serializer.errors}")

        # Form the try described before
        # user = user_serializer.save()

        # Create the user in UserProfile model
        profile_obj = profile_serializer.save()

        # Return the id of the new user
        logger.info(
            f"User added - Credentials - {credentials_obj.id} - Profile {profile_obj.identification_number}")

        return Response(data={"credentials": credentials_obj.id, "profile": profile_obj.identification_number}, status=status.HTTP_201_CREATED)
        # return Response(data={}, status=status.HTTP_201_CREATED)

    @action(detail=True, methods=["get"])
    def user_by_id(self, request, identification_number):
        logger.info("User by id: %s", identification_number)
        user = UserProfile.objects.get(pk=identification_number)
        serializer = self.get_serializer(user)
        res = serializer.data
        res["user"] = user.user.email
        logger.info("User by id response: %s", res)
        # for user in serializer.data:
        #     user["user"] = user["user"]["email"]
        return Response(data=res, status=status.HTTP_200_OK)

    @action(detail=False, methods=["post"])
    def logout(self, request):
        try:
            logger.info("Logout request")
            refresh_token = request.data["refresh_token"]
            token = RefreshToken(refresh_token)
            token.blacklist()
            return Response(status=status.HTTP_205_RESET_CONTENT)
        except Exception as e:
            logger.info(f'Logout error: {e}')
            return Response(status=status.HTTP_400_BAD_REQUEST)
