from rest_framework import viewsets
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework import status
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.users_in_group import UsersInGroup
from users.models import UserProfile
from ..serializers.users_in_group import UsersInGroupSerializer
import logging

logger = logging.getLogger("django")


@extend_schema_view(
    list=extend_schema(
        summary='Obtener una lista de objetos',
        responses={200: UsersInGroupSerializer(many=True)},
    ),
    create=extend_schema(
        summary='Crear un nuevo objeto',
        request=UsersInGroupSerializer,
        responses={201: UsersInGroupSerializer},
    ),
    retrieve=extend_schema(
        summary='Obtener un objeto por ID',
        responses={200: UsersInGroupSerializer},
    ),
    update=extend_schema(
        summary='Actualizar un objeto por ID',
        request=UsersInGroupSerializer,
        responses={200: UsersInGroupSerializer},
    ),
    partial_update=extend_schema(
        summary='Actualizar parcialmente un objeto por ID',
        request=UsersInGroupSerializer,
        responses={200: UsersInGroupSerializer},
    ),
    destroy=extend_schema(
        summary='Eliminar un objeto por ID',
        responses={204: None},
    ),
)
class UsersInGroupViewSet(viewsets.ModelViewSet):
    queryset = UsersInGroup.objects.all()
    serializer_class = UsersInGroupSerializer

    @action(methods=["get"], detail=True)
    def groups_by_proffesor(self, request, pk=None):
        professor_id = UserProfile.objects.get(identification_number=pk).id
        logger.info(f'Professor id: {professor_id}')
        # Iterate through users_in_group and get the groups where the professor is
        groups = []
        for user_in_group in self.get_queryset():  # type: ignore
            serialized_professor_group = []
            if user_in_group.user_id.id == professor_id:
                professor_group = UsersInGroup.objects.filter(
                    group_id=user_in_group.group_id.id).exclude(user_id=professor_id)
                # logger.info(f'professor groups: {professor_group}')
                for group in professor_group:
                    serialize = self.get_serializer(group)
                    serialized_professor_group.append(serialize.data)
                groups.append(serialized_professor_group)
        logger.info(f'Found groups: {groups}')

        return Response(data={'groups': None if len(groups) == 0 else groups}, status=status.HTTP_200_OK)
