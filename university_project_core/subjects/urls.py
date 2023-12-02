from django.urls import path, include
from rest_framework import routers
# from rest_framework.documentation import include_docs_urls

from .viewspkg.grade import GradeViewSet
from .viewspkg.gradeGroup import GradeGroupViewSet
from .viewspkg.subject import SubjectViewSet
from .viewspkg.groupWithGroupsOfGrades import GroupWithGroupsOfGradesViewSet
from .viewspkg.extensionCourse import ExtensionCourseViewSet
from .viewspkg.gradeDefinition import GradeDefinitionViewSet

router = routers.DefaultRouter()
router.register(r'grades', GradeViewSet, 'grades')
router.register(r'gradeGroups', GradeGroupViewSet, 'gradeGroups')
router.register(r'subjects', SubjectViewSet, 'subjects')
router.register(r'groupWithGroupsOfGrades',
                GroupWithGroupsOfGradesViewSet, 'GroupWithGroupsOfGrades')
router.register(r'extensioncourses',
                ExtensionCourseViewSet, 'extensioncourses')
router.register(r'gradeDefinitions',
                GradeDefinitionViewSet, 'gradeDefinitions')

urlpatterns = [
    path("api/", include(router.urls))
    # path("api/docs/", include_docs_urls(title="Subjects API"))
]
