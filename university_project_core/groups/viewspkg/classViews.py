from rest_framework import viewsets
from ..models.classModel import Class
from ..serializers.classSerializer import ClassSerializer


class ClassViewSet(viewsets.ViewSet):
    queryset = Class.objects.all()
    serializer_class = ClassSerializer
