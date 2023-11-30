from rest_framework import viewsets
from rest_framework.decorators import action
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.subject import Subject
from ..serializers.subject import SubjectSerializer


@extend_schema_view(
    list=extend_schema(
        summary='Obtener una lista de objetos',
        responses={200: SubjectSerializer(many=True)},
    ),
    create=extend_schema(
        summary='Crear un nuevo objeto',
        request=SubjectSerializer,
        responses={201: SubjectSerializer},
    ),
    retrieve=extend_schema(
        summary='Obtener un objeto por ID',
        responses={200: SubjectSerializer},
    ),
    update=extend_schema(
        summary='Actualizar un objeto por ID',
        request=SubjectSerializer,
        responses={200: SubjectSerializer},
    ),
    partial_update=extend_schema(
        summary='Actualizar parcialmente un objeto por ID',
        request=SubjectSerializer,
        responses={200: SubjectSerializer},
    ),
    destroy=extend_schema(
        summary='Eliminar un objeto por ID',
        responses={204: None},
    ),
)
class SubjectViewSet(viewsets.ModelViewSet):
    serializer_class = SubjectSerializer
    queryset = Subject.objects.all()
