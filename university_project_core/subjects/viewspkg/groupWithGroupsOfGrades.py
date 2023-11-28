from rest_framework import viewsets
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.groupWithGroupsOfGrades import GroupWithGroupsOfGrades
from ..serializers.groupWithGroupsOfGrades import GroupWithGroupsOfGradesSerializer


@extend_schema_view(
    list=extend_schema(
        summary='Obtener una lista de objetos',
        responses={200: GroupWithGroupsOfGradesSerializer(many=True)},
    ),
    create=extend_schema(
        summary='Crear un nuevo objeto',
        request=GroupWithGroupsOfGradesSerializer,
        responses={201: GroupWithGroupsOfGradesSerializer},
    ),
    retrieve=extend_schema(
        summary='Obtener un objeto por ID',
        responses={200: GroupWithGroupsOfGradesSerializer},
    ),
    update=extend_schema(
        summary='Actualizar un objeto por ID',
        request=GroupWithGroupsOfGradesSerializer,
        responses={200: GroupWithGroupsOfGradesSerializer},
    ),
    partial_update=extend_schema(
        summary='Actualizar parcialmente un objeto por ID',
        request=GroupWithGroupsOfGradesSerializer,
        responses={200: GroupWithGroupsOfGradesSerializer},
    ),
    destroy=extend_schema(
        summary='Eliminar un objeto por ID',
        responses={204: None},
    ),
)
class GroupWithGroupsOfGradesViewSet(viewsets.ModelViewSet):
    serializer_class = GroupWithGroupsOfGradesSerializer
    queryset = GroupWithGroupsOfGrades.objects.all()
