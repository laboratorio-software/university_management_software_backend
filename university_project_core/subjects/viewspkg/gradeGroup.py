from rest_framework import viewsets
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.gradeGroup import GradeGroup
from ..serializers.gradeGroup import GradeGroupSerializer


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
