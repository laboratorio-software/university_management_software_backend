from django.db import models

class Class(models.Model):
    date = models.DateField  # fecha date [default:`now()`]
    # TODO: We really need these fields, what aattributes or default alues could they have?
    start_time = models.TimeField()
    end_time = models.TimeField()
    created = models.DateTimeField(auto_created=True)
    updated = models.DateTimeField(auto_now=True)

    @property
    def as_object(self) -> dict:
        class_as_object = {
            "id": self.id,
            "date": self.date,
            "start_time": self.start_time,
            "end_time": self.end_time,
            "created": self.created,
            "updated": self.updated,
        }
        return class_as_object

    def __str__(self) -> str:
        return f"{self.date}-{self.start_time}-{self.end_time}"
