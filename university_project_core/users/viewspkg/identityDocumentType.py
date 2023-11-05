from rest_framework import viewsets
from ..models.identityDocumentType import IdentityDocumentType
from ..serializers.identityDocumentType import IdentityDocumentTypeSerializer


class IdentityDocumentTypeViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = IdentityDocumentType.objects.all()
    serializer_class = IdentityDocumentTypeSerializer
