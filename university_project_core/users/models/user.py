from django.db import models
from django.contrib.auth.models import User
from .identityDocumentType import IdentityDocumentType
from .role import Role

ACTIVE = "ACTIVE"
INACTIVE = "INACTIVE"
ESTADO = [(ACTIVE, "Activo"), (INACTIVE, "Inactivo")]


class UserProfile(models.Model):
    # This line is required. Links UserProfile to a User model instance (django user model).
    user = models.OneToOneField(User, on_delete=models.CASCADE)

    # additional fields required by our own model diagram
    first_name = models.CharField(max_length=50)  # null is false by default
    middle_name = models.CharField(max_length=50)  # null is false by default
    last_name = models.CharField(max_length=50)  # null is false by default
    second_last_name = models.CharField(
        max_length=50)  # null is false by default
    identification_type = models.ForeignKey(
        IdentityDocumentType, on_delete=models.CASCADE)
    identification_number = models.CharField(
        max_length=12)  # Strict matching for this field
    phone_number = models.CharField(max_length=20)
    address = models.CharField(max_length=255)  # null is false by default
    role_id = models.ForeignKey(Role, on_delete=models.CASCADE)
    # integer [ref: > Programa_academico.id , not null] #TODO: Check this
    academic_program_id = models
    career_average = models.FloatField()
    status = models.CharField(max_length=10, choices=ESTADO)
    semester = models.IntegerField(default=0)
    created = models.DateTimeField(auto_created=True)
    updated = models.DateTimeField(auto_now=True)

    @property
    def as_object(self):
        user_profile_as_object = {
            "id": self.id,
            "user": self.user,
            "first_name": self.first_name,
            "middle_name": self.middle_name,
            "last_name": self.last_name,
            "second_last_name": self.second_last_name,
            "identification_type": self.identification_type,
            "identification_number": self.identification_number,
            "phone_number": self.phone_number,
            "address": self.address,
            "role_id": self.role_id,
            "academic_program_id": self.academic_program_id,
            "career_average": self.career_average,
            "status": self.status,
            "semester": self.semester,
            "created": self.created,
            "updated": self.updated
        }
        return user_profile_as_object

    def __str__(self):
        return str(self.id) + "-" + self.user.username