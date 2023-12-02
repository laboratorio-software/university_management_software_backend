from rest_framework import viewsets
from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import action
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.gradeDefinition import GradeDefinition
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
    def grades_by_user(self, request, pk=None):
        grades = self.get_queryset().filter(user_id=pk)
        if (len(grades) == 0):
            logger.info(f'Grades not found for user {pk}')
            return Response({'message': 'No hay calificaciones para este usuario'}, status=status.HTTP_404_NOT_FOUND)
        else:
            serializer = self.get_serializer(grades, many=True)
            formattedRes = serializer.data
            for grade in formattedRes:
                grade["grade_group_id"] = GradeDefinition.objects.get(
                    id=grade["grade_definition_id"]).grade_group_id.id
            logger.info(f'Grades by user {pk} found: {serializer.data}')
            return Response(serializer.data, status=status.HTTP_200_OK)

    def create(self, request):
        logger.info(f'Grade creation request: {request.data}')
        serialize = self.get_serializer(data=request.data)
        if serialize.is_valid():
            logger.info(f'Grade creation serializer: {serialize.data}')
        else:
            logger.error(
                f'Grade creation serializer errors: {serialize.errors}')
        return super().create(request)
