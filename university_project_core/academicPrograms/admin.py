from django.contrib import admin
from .models.academicProgram import AcademicProgram
from .models.academicProgramWithSubjects import AcademicProgramWithSubjects
from .models.changesInSubject import ChangesInSubject
# Register your models here.
admin.site.register(AcademicProgram)
admin.site.register(AcademicProgramWithSubjects)
admin.site.register(ChangesInSubject)
