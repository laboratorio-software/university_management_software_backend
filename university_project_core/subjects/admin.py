from django.contrib import admin
from .models.extensionCourse import ExtensionCourse
from .models.grade import Grade
from .models.subject import Subject
from .models.gradeGroup import GradeGroup
from .models.groupWithGroupsOfGrades import GroupWithGroupsOfGrades

# Register your models here.
admin.site.register(ExtensionCourse)
admin.site.register(Grade)
admin.site.register(Subject)
admin.site.register(GradeGroup)
admin.site.register(GroupWithGroupsOfGrades)
