from rest_framework import serializers
from ..models.identityDocumentType import IdentityDocumentType


class IdentityDocumentTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = IdentityDocumentType
        fields = '__all__'
