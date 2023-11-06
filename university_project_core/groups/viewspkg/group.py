from rest_framework import viewsets
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.group import Group
from ..serializers.group import GroupSerializer


@extend_schema_view(
    list=extend_schema(
        summary='Obtener una lista de objetos',
        responses={200: GroupSerializer(many=True)},
    ),
    create=extend_schema(
        summary='Crear un nuevo objeto',
        request=GroupSerializer,
        responses={201: GroupSerializer},
    ),
    retrieve=extend_schema(
        summary='Obtener un objeto por ID',
        responses={200: GroupSerializer},
    ),
    update=extend_schema(
        summary='Actualizar un objeto por ID',
        request=GroupSerializer,
        responses={200: GroupSerializer},
    ),
    partial_update=extend_schema(
        summary='Actualizar parcialmente un objeto por ID',
        request=GroupSerializer,
        responses={200: GroupSerializer},
    ),
    destroy=extend_schema(
        summary='Eliminar un objeto por ID',
        responses={204: None},
    ),
)
class GroupViewSet(viewsets.ViewSet):
    queryset = Group.objects.all()
    serializer_class = GroupSerializer
