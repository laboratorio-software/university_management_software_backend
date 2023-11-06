from rest_framework import viewsets
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.extensionCourse import ExtensionCourse
from ..serializers.extensionCourse import ExtensionCourseSerializer


@extend_schema_view(
    list=extend_schema(
        summary='Obtener una lista de objetos',
        responses={200: ExtensionCourseSerializer(many=True)},
    ),
    create=extend_schema(
        summary='Crear un nuevo objeto',
        request=ExtensionCourseSerializer,
        responses={201: ExtensionCourseSerializer},
    ),
    retrieve=extend_schema(
        summary='Obtener un objeto por ID',
        responses={200: ExtensionCourseSerializer},
    ),
    update=extend_schema(
        summary='Actualizar un objeto por ID',
        request=ExtensionCourseSerializer,
        responses={200: ExtensionCourseSerializer},
    ),
    partial_update=extend_schema(
        summary='Actualizar parcialmente un objeto por ID',
        request=ExtensionCourseSerializer,
        responses={200: ExtensionCourseSerializer},
    ),
    destroy=extend_schema(
        summary='Eliminar un objeto por ID',
        responses={204: None},
    ),
)
class ExtensionCourseViewSet(viewsets.ModelViewSet):
    queryset = ExtensionCourse.objects.all()
    serializer_class = ExtensionCourseSerializer
