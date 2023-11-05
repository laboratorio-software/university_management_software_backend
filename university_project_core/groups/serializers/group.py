from rest_framework import serializers
from ..models.classes_in_group import ClassesInGroup


class GroupSerializer(serializers.ModelSerializer):
    class Meta:
        model = ClassesInGroup
        fields = '__all__'
