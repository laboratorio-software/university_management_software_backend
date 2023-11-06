from rest_framework import viewsets
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.user import UserProfile
from ..serializers.user import UserProfileSerializer


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
)
class UserProfileViewSet(viewsets.ModelViewSet):
    queryset = UserProfile.objects.all()
    serializer_class = UserProfileSerializer
