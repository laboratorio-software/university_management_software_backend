from rest_framework import viewsets
from ..models.gradeGroup import GradeGroup
from ..serializers.gradeGroup import GradeGroupSerializer


class GradeGroupViewSet(viewsets.ModelViewSet):
    serializer_class = GradeGroupSerializer
    queryset = GradeGroup.objects.all()
