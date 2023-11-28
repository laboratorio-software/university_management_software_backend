from django.db import models
# from academicPrograms.models import AcademicProgram


class Subject(models.Model):
    name = models.CharField(max_length=50)  # not null by default
    # values like IS768, IS814, and so on
    code = models.CharField(max_length=10, blank=True, null=True)
    credits = models.IntegerField()
    schedule_intensity = models.IntegerField()  # hours per week
    # academic_program_id = models.ForeignKey(
    #     AcademicProgram, on_delete=models.CASCADE)
    # TODO: Add this validation -> "It must always be less than or equal to the number of semesters of the program to which it belongs."
    place_in_semester = models.IntegerField()
    # TODO: the values would be only the codes of the subjects, how can we do these?
    pre_requisite = models.CharField(max_length=6, null=True)
    created = models.DateTimeField(auto_created=True)
    updated = models.DateTimeField(auto_now=True)

    @property
    def as_object(self) -> dict:
        subject_as_object = {
            "id": self.id,
            "name": self.name,
            "code": self.code,
            "credits": self.credits,
            "schedule_intensity": self.schedule_intensity,
            # "academic_program_id": self.academic_program_id,
            "place_in_semester": self.place_in_semester,
            "pre_requisite": self.pre_requisite,
            "created": self.created,
            "updated": self.updated
        }
        return subject_as_object

    def __str__(self) -> str:
        return str(self.id) + "-" + self.code + "-" + self.name + "-" + str(self.credits)
