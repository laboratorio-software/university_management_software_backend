from django.db import models
from .gradeGroup import GradeGroup
from .subject import Subject


class SubjectWithGroupsOfGrades(models.Model):
    grade_group_id = models.ForeignKey(GradeGroup, on_delete=models.CASCADE)
    subject_id = models.ForeignKey(Subject, on_delete=models.CASCADE)
    created = models.DateTimeField(auto_created=True)
    updated = models.DateTimeField(auto_now=True)

    @property
    def as_object(self) -> dict:
        subject_with_groups_of_grades_as_object = {
            "id": self.id,
            "grade_group_id": self.grade_group_id,
            "subject_id": self.subject_id,
            "created": self.created,
            "updated": self.updated
        }
        return subject_with_groups_of_grades_as_object

    def __str__(self) -> str:
        return str(self.id) + "-" + str(self.grade_group_id) + "-" + str(self.subject_id)
