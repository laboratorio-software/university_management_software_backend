from rest_framework import viewsets
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models import AcademicProgram
from ..serializers import AcademicProgramSerializer


@extend_schema_view(
    list=extend_schema(
        summary='Obtener una lista de objetos',
        responses={200: AcademicProgramSerializer(many=True)},
    ),
    create=extend_schema(
        summary='Crear un nuevo objeto',
        request=AcademicProgramSerializer,
        responses={201: AcademicProgramSerializer},
    ),
    retrieve=extend_schema(
        summary='Obtener un objeto por ID',
        responses={200: AcademicProgramSerializer},
    ),
    update=extend_schema(
        summary='Actualizar un objeto por ID',
        request=AcademicProgramSerializer,
        responses={200: AcademicProgramSerializer},
    ),
    partial_update=extend_schema(
        summary='Actualizar parcialmente un objeto por ID',
        request=AcademicProgramSerializer,
        responses={200: AcademicProgramSerializer},
    ),
    destroy=extend_schema(
        summary='Eliminar un objeto por ID',
        responses={204: None},
    ),
)
class AcademicProgramViewSet(viewsets.ModelViewSet):
    queryset = AcademicProgram.objects.all()
    serializer_class = AcademicProgramSerializer
