from django.urls import path, include
from rest_framework import routers
# from rest_framework.documentation import include_docs_urls

from .viewspkg.grade import GradeViewSet
from .viewspkg.gradeGroup import GradeGroupViewSet
from .viewspkg.subject import SubjectViewSet
from .viewspkg.subjectWithGroupsOfGrades import SubjectWithGroupsOfGradesViewSet
from .viewspkg.extensionCourse import ExtensionCourseViewSet

router = routers.DefaultRouter()
router.register(r'grades', GradeViewSet, 'grades')
router.register(r'gradeGroups', GradeGroupViewSet, 'gradeGroups')
router.register(r'subjects', SubjectViewSet, 'subjects')
router.register(r'subjectsWithGroupsOfGrades',
                SubjectWithGroupsOfGradesViewSet, 'subjectsWithGroupsOfGrades')
router.register(r'extensioncourses',
                ExtensionCourseViewSet, 'extensioncourses')

urlpatterns = [
    path("api/", include(router.urls))
    # path("api/docs/", include_docs_urls(title="Subjects API"))
]
