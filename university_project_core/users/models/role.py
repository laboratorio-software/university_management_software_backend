from django.db import models

STUDENT = "ESTUDIANTE"
TEACHER = "DOCENTE"
SUPERADMIN = "SUPERADMINISTRADOR"
ADMIN = "ADMINISTRADOR"

ROLE_NAME = [(STUDENT, "Estudiante"), (TEACHER, "Docente"),
             (SUPERADMIN, "Superadministrador"), (ADMIN, "Administrador")]


class Role(models.Model):

    name = models.CharField(max_length=20, choices=ROLE_NAME)
    created = models.DateTimeField(auto_created=True)
    updated = models.DateTimeField(auto_now=True)

    @property
    def as_object(self):
        role_as_object = {
            "id": self.id,
            "name": self.name,
            "created": self.created,
            "updated": self.updated
        }
        return role_as_object

    def __str__(self):
        return str(self.id) + "-" + self.name
