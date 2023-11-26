from django.db import models

CEDULA = "CEDULA"
IDENTITY_CARD = "TARJETA_IDENTIDAD"
FOREIGNER_CARD = "CEDULA_EXTRANJERIA"
PASSPORT = "PASAPORTE"
IDENTITY_DOCUMENT_TYPE = [(CEDULA, "Cédula"), (IDENTITY_CARD, "Tarjeta de identidad"),
                          (FOREIGNER_CARD, "Cédula de extranjería"), (PASSPORT, "Pasaporte")]


class IdentityDocumentType(models.Model):
    name = models.CharField(max_length=20, choices=IDENTITY_DOCUMENT_TYPE)
    created = models.DateTimeField(auto_created=True)
    updated = models.DateTimeField(auto_now=True)

    @property
    def as_object(self):
        identity_document_type_as_object = {
            "id": self.id,  # type: ignore
            "name": self.name,
            "created": self.created,
            "updated": self.updated
        }
        return identity_document_type_as_object

    def __str__(self):
        return str(self.id) + "-" + self.name  # type: ignore
