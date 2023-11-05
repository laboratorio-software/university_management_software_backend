from django.db import models
from .group import Group
from .classModel import Class


class ClassesInGroup(models.Model):

    group_id = models.ForeignKey(Group, on_delete=models.CASCADE)
    class_id = models.ForeignKey(Class, on_delete=models.CASCADE)
    created = models.DateTimeField(auto_created=True)
    updated = models.DateTimeField(auto_now=True)

    @property
    def as_object(self) -> dict:
        classes_in_group_as_object = {
            "id": self.id,
            "group_id": self.group_id,
            "class_id": self.class_id,
            "created": self.created,
            "updated": self.updated,
        }
        return classes_in_group_as_object

    def __Str__(self) -> str:
        return f"{self.id}-{self.group_id}-{self.class_id}"
