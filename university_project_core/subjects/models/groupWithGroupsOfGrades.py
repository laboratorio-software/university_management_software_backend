from django.db import models
from .gradeGroup import GradeGroup
from groups.models import Group


class GroupWithGroupsOfGrades(models.Model):
    grade_group_id = models.ForeignKey(GradeGroup, on_delete=models.CASCADE)
    group_id = models.ForeignKey(Group, on_delete=models.CASCADE)
    created = models.DateTimeField(auto_created=True)
    updated = models.DateTimeField(auto_now=True)

    @property
    def as_object(self) -> dict:
        group_with_groups_of_grades_as_object = {
            "id": self.id,
            "grade_group_id": self.grade_group_id,
            "group_id": self.group_id,
            "created": self.created,
            "updated": self.updated
        }
        return group_with_groups_of_grades_as_object

    def __str__(self) -> str:
        return str(self.id) + "-" + str(self.grade_group_id) + "-" + str(self.group_id)
