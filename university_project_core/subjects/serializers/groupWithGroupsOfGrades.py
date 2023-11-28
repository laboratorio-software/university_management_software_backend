from rest_framework import serializers
from ..models.groupWithGroupsOfGrades import GroupWithGroupsOfGrades


class GroupWithGroupsOfGradesSerializer(serializers.ModelSerializer):
    class Meta:
        model = GroupWithGroupsOfGrades
        fields = '__all__'
