from django.urls import path, include
from rest_framework import routers
from rest_framework.documentation import include_docs_urls

from .viewspkg.academicProgram import AcademicProgramViewSet
from .viewspkg.academicProgramWithSubjects import AcademicProgramWithSubjectsViewSet
from .viewspkg.changesInSubject import ChangesInSubjectViewSet

router = routers.DefaultRouter()
router.register(r'academicprograms',
                AcademicProgramViewSet, 'academicprograms')
router.register(r'academicprogramswithsubjects',
                AcademicProgramWithSubjectsViewSet, 'academicprogramswithsubjects')
router.register(r'changesinsubjects',
                ChangesInSubjectViewSet, 'changesinsubjects')


urlpatterns = [
    path("api/", include(router.urls)),
    path("api/docs/", include_docs_urls(title="Academic programs API"))
]
