from rest_framework import viewsets
from drf_spectacular.utils import extend_schema, extend_schema_view
from ..models.identityDocumentType import IdentityDocumentType
from ..serializers.identityDocumentType import IdentityDocumentTypeSerializer


@extend_schema_view(
    list=extend_schema(
        summary='Obtener una lista de objetos',
        responses={200: IdentityDocumentTypeSerializer(many=True)},
    ),
    create=extend_schema(
        summary='Crear un nuevo objeto',
        request=IdentityDocumentTypeSerializer,
        responses={201: IdentityDocumentTypeSerializer},
    ),
    retrieve=extend_schema(
        summary='Obtener un objeto por ID',
        responses={200: IdentityDocumentTypeSerializer},
    ),
    update=extend_schema(
        summary='Actualizar un objeto por ID',
        request=IdentityDocumentTypeSerializer,
        responses={200: IdentityDocumentTypeSerializer},
    ),
    partial_update=extend_schema(
        summary='Actualizar parcialmente un objeto por ID',
        request=IdentityDocumentTypeSerializer,
        responses={200: IdentityDocumentTypeSerializer},
    ),
    destroy=extend_schema(
        summary='Eliminar un objeto por ID',
        responses={204: None},
    ),
)
class IdentityDocumentTypeViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = IdentityDocumentType.objects.all()
    serializer_class = IdentityDocumentTypeSerializer
