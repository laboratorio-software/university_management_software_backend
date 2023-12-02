from django.db import models
from .gradeGroup import GradeGroup


class GradeDefinition(models.Model):
    name = models.CharField(max_length=50, blank=False, null=False)
    grade_group_id = models.ForeignKey(GradeGroup, on_delete=models.CASCADE)
    percentage_in_group = models.FloatField()
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    @property
    def as_object(self) -> dict:
        grade_definition_as_object = {
            "id": self.id,
            "name": self.name,
            "grade_group_id": self.grade_group_id,
            "percentage_in_group": self.percentage_in_group,
            "created_at": self.created_at,
            "updated_at": self.updated_at
        }
        return grade_definition_as_object

    def __str__(self):
        return str(self.id) + "-" + self.name + "-" + str(self.grade_group_id) + "-" + str(self.percentage_in_group)
