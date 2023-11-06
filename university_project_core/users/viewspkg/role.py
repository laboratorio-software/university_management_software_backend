from rest_framework import viewsets
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.role import Role
from ..serializers.role import RoleSerializer


@extend_schema_view(
    list=extend_schema(
        summary='Obtener una lista de objetos',
        responses={200: RoleSerializer(many=True)},
    ),
    create=extend_schema(
        summary='Crear un nuevo objeto',
        request=RoleSerializer,
        responses={201: RoleSerializer},
    ),
    retrieve=extend_schema(
        summary='Obtener un objeto por ID',
        responses={200: RoleSerializer},
    ),
    update=extend_schema(
        summary='Actualizar un objeto por ID',
        request=RoleSerializer,
        responses={200: RoleSerializer},
    ),
    partial_update=extend_schema(
        summary='Actualizar parcialmente un objeto por ID',
        request=RoleSerializer,
        responses={200: RoleSerializer},
    ),
    destroy=extend_schema(
        summary='Eliminar un objeto por ID',
        responses={204: None},
    ),
)
class RoleViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = Role.objects.all()
    serializer_class = RoleSerializer
