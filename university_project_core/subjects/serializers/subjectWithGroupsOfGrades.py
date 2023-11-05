from rest_framework import serializers
from ..models.subjectWithGroupsOfGrades import SubjectWithGroupsOfGrades


class SubjectWithGroupsOfGradesSerializer(serializers.ModelSerializer):
    class Meta:
        model = SubjectWithGroupsOfGrades
        fields = '__all__'
