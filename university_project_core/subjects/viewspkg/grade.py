from rest_framework import viewsets
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.grade import Grade
from ..serializers.grade import GradeSerializer


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
