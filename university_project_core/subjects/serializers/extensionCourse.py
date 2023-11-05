from rest_framework import serializers
from ..models.extensionCourse import ExtensionCourse


class ExtensionCourseSerializer(serializers.ModelSerializer):
    class Meta:
        model = ExtensionCourse
        fields = '__all__'
