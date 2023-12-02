from rest_framework import viewsets
from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import action
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.groupWithGroupsOfGrades import GroupWithGroupsOfGrades
from ..serializers.gradeGroup import GradeGroupSerializer
from ..serializers.groupWithGroupsOfGrades import GroupWithGroupsOfGradesSerializer
import logging
logger = logging.getLogger("django")


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

    @action(detail=True, methods=['get'])
    def grade_groups_by_group(self, request, pk=None):
        try:
            grade_group_with_group = GroupWithGroupsOfGrades.objects.filter(
                group_id=pk)
            serialize_grade_groups = []
            for grade_group in grade_group_with_group:
                serializer = GradeGroupSerializer(grade_group.grade_group_id)
                serialize_grade_groups.append(serializer.data)
            logger.info(
                f'grade_groups by group_id {pk}: {serialize_grade_groups}')
            return Response(serialize_grade_groups, status=status.HTTP_200_OK)
        except GroupWithGroupsOfGrades.DoesNotExist:
            logger.error(f'grade_groups by group_id {pk} not found')
            return Response(status=status.HTTP_404_NOT_FOUND)
