from rest_framework import viewsets
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models import ChangesInSubject
from ..serializers import ChangesInSubjectSerializer


@extend_schema_view(
    list=extend_schema(
        summary='Obtener una lista de objetos',
        responses={200: ChangesInSubjectSerializer(many=True)},
    ),
    create=extend_schema(
        summary='Crear un nuevo objeto',
        request=ChangesInSubjectSerializer,
        responses={201: ChangesInSubjectSerializer},
    ),
    retrieve=extend_schema(
        summary='Obtener un objeto por ID',
        responses={200: ChangesInSubjectSerializer},
    ),
    update=extend_schema(
        summary='Actualizar un objeto por ID',
        request=ChangesInSubjectSerializer,
        responses={200: ChangesInSubjectSerializer},
    ),
    partial_update=extend_schema(
        summary='Actualizar parcialmente un objeto por ID',
        request=ChangesInSubjectSerializer,
        responses={200: ChangesInSubjectSerializer},
    ),
    destroy=extend_schema(
        summary='Eliminar un objeto por ID',
        responses={204: None},
    ),
)
class ChangesInSubjectViewSet(viewsets.ModelViewSet):
    queryset = ChangesInSubject.objects.all()
    serializer_class = ChangesInSubjectSerializer
