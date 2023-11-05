from rest_framework import viewsets
from ..models.extensionCourse import ExtensionCourse
from ..serializers.extensionCourse import ExtensionCourseSerializer


class ExtensionCourseViewSet(viewsets.ModelViewSet):
    queryset = ExtensionCourse.objects.all()
    serializer_class = ExtensionCourseSerializer
