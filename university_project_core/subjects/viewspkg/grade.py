from rest_framework import viewsets
from ..models.grade import Grade
from ..serializers.grade import GradeSerializer


class GradeViewSet(viewsets.ModelViewSet):
    serializer_class = GradeSerializer
    queryset = Grade.objects.all()
