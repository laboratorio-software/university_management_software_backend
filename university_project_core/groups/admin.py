from django.contrib import admin
from .models.classes_in_group import ClassesInGroup
from .models.group import Group
from .models.users_in_group import UsersInGroup
from .models.classModel import Class

# Register your models here.
admin.site.register(ClassesInGroup)
admin.site.register(Group)
admin.site.register(UsersInGroup)
admin.site.register(Class)
