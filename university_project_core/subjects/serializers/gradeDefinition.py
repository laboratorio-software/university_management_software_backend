from rest_framework import serializers
from ..models import GradeDefinition


class GradeDefinitionSerializer(serializers.ModelSerializer):
    class Meta:
        model = GradeDefinition
        fields = '__all__'
