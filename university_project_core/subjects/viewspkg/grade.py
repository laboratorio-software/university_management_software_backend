from rest_framework import viewsets
from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import action
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.grade import Grade
from ..serializers.grade import GradeSerializer
import logging

logger = logging.getLogger("django")


@extend_schema_view(
    list=extend_schema(
        summary='Obtener una lista de objetos',
        responses={200: GradeSerializer(many=True)},
    ),
    create=extend_schema(
        summary='Crear un nuevo objeto',
        request=GradeSerializer,
        responses={201: GradeSerializer},
    ),
    retrieve=extend_schema(
        summary='Obtener un objeto por ID',
        responses={200: GradeSerializer},
    ),
    update=extend_schema(
        summary='Actualizar un objeto por ID',
        request=GradeSerializer,
        responses={200: GradeSerializer},
    ),
    partial_update=extend_schema(
        summary='Actualizar parcialmente un objeto por ID',
        request=GradeSerializer,
        responses={200: GradeSerializer},
    ),
    destroy=extend_schema(
        summary='Eliminar un objeto por ID',
        responses={204: None},
    ),
)
class GradeViewSet(viewsets.ModelViewSet):
    serializer_class = GradeSerializer
    queryset = Grade.objects.all()

    @action(detail=True, methods=['GET'])
    def grades_by_grade_group(self, request, pk=None):
        grades = Grade.objects.filter(grade_group_id=pk)
        serializer = self.get_serializer(grades, many=True)
        logger.info(f'Grades by grade group: {serializer.data}')
        return Response(serializer.data, status=status.HTTP_200_OK)
