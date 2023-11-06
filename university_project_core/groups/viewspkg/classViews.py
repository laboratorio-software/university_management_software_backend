from rest_framework import viewsets
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.classModel import Class
from ..serializers.classSerializer import ClassSerializer


@extend_schema_view(
    list=extend_schema(
        summary='Obtener una lista de objetos',
        responses={200: ClassSerializer(many=True)},
    ),
    create=extend_schema(
        summary='Crear un nuevo objeto',
        request=ClassSerializer,
        responses={201: ClassSerializer},
    ),
    retrieve=extend_schema(
        summary='Obtener un objeto por ID',
        responses={200: ClassSerializer},
    ),
    update=extend_schema(
        summary='Actualizar un objeto por ID',
        request=ClassSerializer,
        responses={200: ClassSerializer},
    ),
    partial_update=extend_schema(
        summary='Actualizar parcialmente un objeto por ID',
        request=ClassSerializer,
        responses={200: ClassSerializer},
    ),
    destroy=extend_schema(
        summary='Eliminar un objeto por ID',
        responses={204: None},
    ),
)
class ClassViewSet(viewsets.ViewSet):
    queryset = Class.objects.all()
    serializer_class = ClassSerializer
