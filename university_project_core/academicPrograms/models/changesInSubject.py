from django.db import models
from .academicProgram import AcademicProgram


class ChangesInSubject(models.Model):
    academic_program_id = models.ForeignKey(
        AcademicProgram, on_delete=models.CASCADE)
    date = models.DateField()  # fecha date [default:`now()`]
    # TODO: Set the path of media in project university_project_core
    verification_file = models.FileField(upload_to="ChangesInSubject")
    created = models.DateTimeField(auto_created=True)
    updated = models.DateTimeField(auto_now=True)

    @property
    def as_object(self) -> dict:
        changes_in_subject_as_object = {
            'id': self.id,
            'academic_program_id': self.academic_program_id,
            'date': self.date,
            'verification_file': self.verification_file,
            'created': self.created,
            'updated': self.updated
        }
        return changes_in_subject_as_object

    def __str__(self) -> str:
        return str(self.id) + "-" + str(self.academic_program_id) + "-" + self.date
