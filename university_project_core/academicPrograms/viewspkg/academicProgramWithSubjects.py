from rest_framework import viewsets
from ..models import AcademicProgramWithSubjects
from ..serializers import AcademicProgramWithSubjectsSerializer


class AcademicProgramWithSubjectsViewSet(viewsets.ModelViewSet):
    queryset = AcademicProgramWithSubjects.objects.all()
    serializer_class = AcademicProgramWithSubjectsSerializer
