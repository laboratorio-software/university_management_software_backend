from rest_framework import serializers
from ..models import ChangesInSubject


class ChangesInSubjectSerializer(serializers.ModelSerializer):
    class Meta:
        model = ChangesInSubject
        fields = '__all__'
