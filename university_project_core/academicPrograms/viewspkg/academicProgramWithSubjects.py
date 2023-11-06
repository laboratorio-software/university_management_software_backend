from rest_framework import viewsets
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models import AcademicProgramWithSubjects
from ..serializers import AcademicProgramWithSubjectsSerializer


@extend_schema_view(
    list=extend_schema(
        summary='Obtener una lista de objetos',
        responses={200: AcademicProgramWithSubjectsSerializer(many=True)},
    ),
    create=extend_schema(
        summary='Crear un nuevo objeto',
        request=AcademicProgramWithSubjectsSerializer,
        responses={201: AcademicProgramWithSubjectsSerializer},
    ),
    retrieve=extend_schema(
        summary='Obtener un objeto por ID',
        responses={200: AcademicProgramWithSubjectsSerializer},
    ),
    update=extend_schema(
        summary='Actualizar un objeto por ID',
        request=AcademicProgramWithSubjectsSerializer,
        responses={200: AcademicProgramWithSubjectsSerializer},
    ),
    partial_update=extend_schema(
        summary='Actualizar parcialmente un objeto por ID',
        request=AcademicProgramWithSubjectsSerializer,
        responses={200: AcademicProgramWithSubjectsSerializer},
    ),
    destroy=extend_schema(
        summary='Eliminar un objeto por ID',
        responses={204: None},
    ),
)
class AcademicProgramWithSubjectsViewSet(viewsets.ModelViewSet):
    queryset = AcademicProgramWithSubjects.objects.all()
    serializer_class = AcademicProgramWithSubjectsSerializer
