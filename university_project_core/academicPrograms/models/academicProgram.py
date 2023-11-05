from django.db import models


class AcademicProgram(models.Model):

    name = models.CharField(max_length=255)  # null by default
    semester = models.IntegerField()  # null by default
    credits = models.IntegerField  # null by default
    # Only accepts fields that mathc with patterns like 2024-1, 2045-2, 2020-3, etc. # TODO: Make the neccesary validation of the field
    period = models.CharField(max_length=6)
    created = models.DateTimeField(auto_created=True)
    updated = models.DateTimeField(auto_now=True)

    @property
    def as_object(self) -> dict:
        academic_program_as_object = {
            'id': self.id,
            'name': self.name,
            'semester': self.semester,
            'credits': self.credits,
            'period': self.period,
            'created': self.created,
            'updated': self.updated
        }
        return academic_program_as_object

    def __str__(self) -> str:
        return str(self.id) + "-" + self.name + "-" + str(self.semester) + "-" + str(self.credits)
