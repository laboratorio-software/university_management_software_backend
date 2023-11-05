from rest_framework import serializers
from ..models.classModel import Class


class ClassSerializer(serializers.ModelSerializer):
    class Meta:
        model = Class
        fields = '__all__'
        depth = 1
