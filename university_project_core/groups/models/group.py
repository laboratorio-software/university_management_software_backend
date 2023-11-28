from django.db import models
from subjects.models import Subject
from subjects.models import ExtensionCourse


class Group(models.Model):
    # extension_course_id could be null-blank beacuse extension courses
    # are not mandatory, but subject_id are.
    # TODO: We will left both attributes as null-blank to be able to create either records with subject_id or extension_course_id.
    # even though, we need to validate that at least one record will have one of them.
    subject_id = models.ForeignKey(Subject,
                                   blank=True,
                                   null=True,
                                   on_delete=models.CASCADE)
    extension_course_id = models.ForeignKey(
        ExtensionCourse,
        blank=True,
        null=True,
        on_delete=models.CASCADE)
    max_num_persons = models.IntegerField(default=20)
    created = models.DateTimeField(auto_created=True)
    updated = models.DateTimeField(auto_now=True)

    @property
    def as_object(self) -> dict:
        group_as_object = {
            "id": self.id,
            "subject_id": self.subject_id,
            "extension_course_id": self.extension_course_id,
            "max_num_persons": self.max_num_persons,
            "created": self.created,
            "updated": self.updated,
        }
        return group_as_object

    def __str__(self) -> str:
        return f"{self.id}-{self.subject_id}-{self.extension_course_id}"
