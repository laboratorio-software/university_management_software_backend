from django.db import models
from .academicProgram import AcademicProgram
from subjects.models import Subject


class AcademicProgramWithSubjects(models.Model):
    academic_program_id = models.ForeignKey(
        AcademicProgram, on_delete=models.CASCADE)
    subject_id = models.ForeignKey(
        Subject, on_delete=models.CASCADE, null=True, blank=True)
    created = models.DateTimeField(auto_created=True)
    updated = models.DateTimeField(auto_now=True)
