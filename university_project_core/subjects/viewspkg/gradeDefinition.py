from rest_framework import viewsets
from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import action
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.gradeDefinition import GradeDefinition
from ..serializers.gradeDefinition import GradeDefinitionSerializer
import logging

logger = logging.getLogger("django")


@extend_schema_view(
    list=extend_schema(
        summary='Obtener una lista de objetos',
        responses={200: GradeDefinitionSerializer(many=True)},
    ),
    create=extend_schema(
        summary='Crear un nuevo objeto',
        request=GradeDefinitionSerializer,
        responses={201: GradeDefinitionSerializer},
    ),
    retrieve=extend_schema(
        summary='Obtener un objeto por ID',
        responses={200: GradeDefinitionSerializer},
    ),
    update=extend_schema(
        summary='Actualizar un objeto por ID',
        request=GradeDefinitionSerializer,
        responses={200: GradeDefinitionSerializer},
    ),
    partial_update=extend_schema(
        summary='Actualizar parcialmente un objeto por ID',
        request=GradeDefinitionSerializer,
        responses={200: GradeDefinitionSerializer},
    ),
    destroy=extend_schema(
        summary='Eliminar un objeto por ID',
        responses={204: None},
    ),
)
class GradeDefinitionViewSet(viewsets.ModelViewSet):
    serializer_class = GradeDefinitionSerializer
    queryset = GradeDefinition.objects.all()
    # TODO: Maybe we can create the notes for each student once the teacher has created them here

    @action(detail=True, methods=['GET'])
    def grades_by_grade_group(self, request, pk=None):
        grades = self.get_queryset().filter(grade_group_id=pk)
        serializer = self.get_serializer(grades, many=True)
        logger.info(f'Grades by grade group: {serializer.data}')
        return Response(serializer.data, status=status.HTTP_200_OK)
