from rest_framework import viewsets
from rest_framework.decorators import action
from rest_framework import status
from rest_framework.response import Response
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.classes_in_group import ClassesInGroup
from ..serializers.classes_in_group import ClassesInGroupSerializer


@extend_schema_view(
    list=extend_schema(
        summary='Obtener una lista de objetos',
        responses={200: ClassesInGroupSerializer(many=True)},
    ),
    create=extend_schema(
        summary='Crear un nuevo objeto',
        request=ClassesInGroupSerializer,
        responses={201: ClassesInGroupSerializer},
    ),
    retrieve=extend_schema(
        summary='Obtener un objeto por ID',
        responses={200: ClassesInGroupSerializer},
    ),
    update=extend_schema(
        summary='Actualizar un objeto por ID',
        request=ClassesInGroupSerializer,
        responses={200: ClassesInGroupSerializer},
    ),
    partial_update=extend_schema(
        summary='Actualizar parcialmente un objeto por ID',
        request=ClassesInGroupSerializer,
        responses={200: ClassesInGroupSerializer},
    ),
    destroy=extend_schema(
        summary='Eliminar un objeto por ID',
        responses={204: None},
    ),
)
class ClassInGroupViewSet(viewsets.ModelViewSet):
    queryset = ClassesInGroup.objects.all()
    serializer_class = ClassesInGroupSerializer

    @action(detail=True, methods=['get'])
    def classes_in_group(self, request, pk=None):
        queryset = self.get_queryset().filter(group_id=pk)  # pk is the group id
        classes = []
        for data in queryset:
            class_info = data.class_id.as_object
            classes.append(class_info)
        return Response(data=classes, status=status.HTTP_200_OK)
