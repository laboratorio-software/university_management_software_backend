from rest_framework import viewsets
from ..models.subjectWithGroupsOfGrades import SubjectWithGroupsOfGrades
from ..serializers.subjectWithGroupsOfGrades import SubjectWithGroupsOfGradesSerializer


class SubjectWithGroupsOfGradesViewSet(viewsets.ModelViewSet):
    serializer_class = SubjectWithGroupsOfGradesSerializer
    queryset = SubjectWithGroupsOfGrades.objects.all()
