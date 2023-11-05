from rest_framework import viewsets
from ..models.subject import Subject
from ..serializers.subject import SubjectSerializer


class SubjectViewSet(viewsets.ModelViewSet):
    serializer_class = SubjectSerializer
    queryset = Subject.objects.all()
