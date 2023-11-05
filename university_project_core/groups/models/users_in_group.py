from django.db import models
from .group import Group
from users.models import UserProfile


class UsersInGroup(models.Model):

    user_id = models.ForeignKey(UserProfile, on_delete=models.CASCADE)
    group_id = models.ForeignKey(Group, on_delete=models.CASCADE)
    created = models.DateTimeField(auto_created=True)
    updated = models.DateTimeField(auto_now=True)

    @property
    def as_object(self) -> dict:
        users_in_group_as_object = {
            "id": self.id,
            "user_id": self.user_id,
            "group_id": self.group_id,
            "created": self.created,
            "updated": self.updated,
        }
        return users_in_group_as_object

    def __str__(self) -> str:
        return f"{self.id}-{self.user_id}-{self.group_id}"
