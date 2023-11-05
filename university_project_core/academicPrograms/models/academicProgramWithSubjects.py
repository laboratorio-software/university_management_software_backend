from django.db import models
from .academicProgram import AcademicProgram


class AcademicProgramWithSubjects(models.Model):
    academic_program_id = models.ForeignKey(
        AcademicProgram, on_delete=models.CASCADE)
    #   asignatura_id integer [ref: > Asignatura.id, not null] # TODO: Left to implement this model
    created = models.DateTimeField(auto_created=True)
    updated = models.DateTimeField(auto_now=True)
