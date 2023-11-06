from rest_framework import viewsets
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.users_in_group import UsersInGroup
from ..serializers.users_in_group import UsersInGroupSerializer


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
class UsersInGroupViewSet(viewsets.ViewSet):
    queryset = UsersInGroup.objects.all()
    serializer_class = UsersInGroupSerializer
