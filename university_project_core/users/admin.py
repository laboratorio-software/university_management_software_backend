from django.contrib import admin
from .models.user import UserProfile
from .models.identityDocumentType import IdentityDocumentType
from .models.role import Role
# Register your models here.
admin.site.register(UserProfile)
admin.site.register(IdentityDocumentType)
admin.site.register(Role)
