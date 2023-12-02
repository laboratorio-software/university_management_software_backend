from rest_framework import viewsets
from rest_framework.response import Response
from rest_framework import status
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.gradeGroup import GradeGroup
from ..serializers.gradeGroup import GradeGroupSerializer
import logging

logger = logging.getLogger("django")


@extend_schema_view(
    list=extend_schema(
        summary='Obtener una lista de objetos',
        responses={200: GradeGroupSerializer(many=True)},
    ),
    create=extend_schema(
        summary='Crear un nuevo objeto',
        request=GradeGroupSerializer,
        responses={201: GradeGroupSerializer},
    ),
    retrieve=extend_schema(
        summary='Obtener un objeto por ID',
        responses={200: GradeGroupSerializer},
    ),
    update=extend_schema(
        summary='Actualizar un objeto por ID',
        request=GradeGroupSerializer,
        responses={200: GradeGroupSerializer},
    ),
    partial_update=extend_schema(
        summary='Actualizar parcialmente un objeto por ID',
        request=GradeGroupSerializer,
        responses={200: GradeGroupSerializer},
    ),
    destroy=extend_schema(
        summary='Eliminar un objeto por ID',
        responses={204: None},
    ),
)
class GradeGroupViewSet(viewsets.ModelViewSet):
    serializer_class = GradeGroupSerializer
    queryset = GradeGroup.objects.all()

    def create(self, request):
        gradeGroup = request.data
        gradeGroup['percentage_in_subject'] = float(
            gradeGroup['percentage_in_subject'])
        logger.info(f'Creating GradeGroup: {gradeGroup}')
        serializer = self.get_serializer(data=gradeGroup)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        else:
            logger.info(f'serializer errors: {serializer.errors}')
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
