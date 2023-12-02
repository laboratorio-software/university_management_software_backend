from rest_framework import viewsets
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.parsers import JSONParser
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.group import Group
from ..serializers.group import GroupSerializer
from subjects.serializers.subject import SubjectSerializer
import logging

logger = logging.getLogger("django")


@extend_schema_view(
    list=extend_schema(
        summary='Obtener una lista de objetos',
        responses={200: GroupSerializer(many=True)},
    ),
    create=extend_schema(
        summary='Crear un nuevo objeto',
        request=GroupSerializer,
        responses={201: GroupSerializer},
    ),
    retrieve=extend_schema(
        summary='Obtener un objeto por ID',
        responses={200: GroupSerializer},
    ),
    update=extend_schema(
        summary='Actualizar un objeto por ID',
        request=GroupSerializer,
        responses={200: GroupSerializer},
    ),
    partial_update=extend_schema(
        summary='Actualizar parcialmente un objeto por ID',
        request=GroupSerializer,
        responses={200: GroupSerializer},
    ),
    destroy=extend_schema(
        summary='Eliminar un objeto por ID',
        responses={204: None},
    ),
)
class GroupViewSet(viewsets.ModelViewSet):
    queryset = Group.objects.all()
    serializer_class = GroupSerializer

    @action(methods=["get"], detail=True)
    def subject_by_group(self, request, pk=None):
        subject = Group.objects.get(id=pk).subject_id
        # logger.info(f'Subject for group {pk}: {subject.as_object}')
        serializer = SubjectSerializer(subject)
        logger.info(f'Subject data sent')
        return Response(data=serializer.data, status=200)
