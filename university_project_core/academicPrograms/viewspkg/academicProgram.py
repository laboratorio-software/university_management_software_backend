from rest_framework import viewsets
from ..models import AcademicProgram
from ..serializers import AcademicProgramSerializer


class AcademicProgramViewSet(viewsets.ModelViewSet):
    queryset = AcademicProgram.objects.all()
    serializer_class = AcademicProgramSerializer
