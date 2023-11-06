from rest_framework import viewsets
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.subjectWithGroupsOfGrades import SubjectWithGroupsOfGrades
from ..serializers.subjectWithGroupsOfGrades import SubjectWithGroupsOfGradesSerializer


@extend_schema_view(
    list=extend_schema(
        summary='Obtener una lista de objetos',
        responses={200: SubjectWithGroupsOfGradesSerializer(many=True)},
    ),
    create=extend_schema(
        summary='Crear un nuevo objeto',
        request=SubjectWithGroupsOfGradesSerializer,
        responses={201: SubjectWithGroupsOfGradesSerializer},
    ),
    retrieve=extend_schema(
        summary='Obtener un objeto por ID',
        responses={200: SubjectWithGroupsOfGradesSerializer},
    ),
    update=extend_schema(
        summary='Actualizar un objeto por ID',
        request=SubjectWithGroupsOfGradesSerializer,
        responses={200: SubjectWithGroupsOfGradesSerializer},
    ),
    partial_update=extend_schema(
        summary='Actualizar parcialmente un objeto por ID',
        request=SubjectWithGroupsOfGradesSerializer,
        responses={200: SubjectWithGroupsOfGradesSerializer},
    ),
    destroy=extend_schema(
        summary='Eliminar un objeto por ID',
        responses={204: None},
    ),
)
class SubjectWithGroupsOfGradesViewSet(viewsets.ModelViewSet):
    serializer_class = SubjectWithGroupsOfGradesSerializer
    queryset = SubjectWithGroupsOfGrades.objects.all()
