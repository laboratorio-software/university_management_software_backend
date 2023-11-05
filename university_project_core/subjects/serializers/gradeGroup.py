from rest_framework import serializers
from ..models.gradeGroup import GradeGroup


class GradeGroupSerializer(serializers.ModelSerializer):
    class Meta:
        model = GradeGroup
        fields = '__all__'
