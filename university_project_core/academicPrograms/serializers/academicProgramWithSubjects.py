from rest_framework import serializers
from ..models import AcademicProgramWithSubjects


class AcademicProgramWithSubjectsSerializer(serializers.ModelSerializer):
    class Meta:
        model = AcademicProgramWithSubjects
        fields = '__all__'
