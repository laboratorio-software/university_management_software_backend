from django.db import models
from academicPrograms.models import AcademicProgram


class ExtensionCourse(models.Model):
    name = models.CharField(max_length=50)  # not null by default
    description = models.TextField()  # not null by default
    cost = models.IntegerField()
    places = models.IntegerField()
    hours = models.IntegerField()
    start_date = models.DateField()
    academic_program_id = models.ForeignKey(
        AcademicProgram, on_delete=models.CASCADE, null=True)
    end_date = models.DateField()
    created = models.DateTimeField(auto_created=True)
    updated = models.DateTimeField(auto_now=True)

    @property
    def as_object(self) -> dict:
        extension_coruse_as_object = {
            'id': self.id,
            'name': self.name,
            'description': self.description,
            'cost': self.cost,
            'places': self.places,
            'hours': self.hours,
            'start_date': self.start_date,
            'academic_program_id': self.academic_program_id,
            'end_date': self.end_date,
            'created': self.created,
            'updated': self.updated
        }
        return extension_coruse_as_object

    def __str__(self):
        return str(self.id) + "-" + self.name + "-" + str(self.cost) + "-" + str(self.places)
