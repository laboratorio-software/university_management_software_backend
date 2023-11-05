from rest_framework import viewsets
from ..models.classes_in_group import ClassesInGroup
from ..serializers.classes_in_group import ClassesInGroupSerializer


class ClassInGroupViewSet(viewsets.ViewSet):
    queryset = ClassesInGroup.objects.all()
    serializer_class = ClassesInGroupSerializer
