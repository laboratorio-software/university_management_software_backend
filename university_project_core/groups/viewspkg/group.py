from rest_framework import viewsets
from ..models.group import Group
from ..serializers.group import GroupSerializer


class GroupViewSet(viewsets.ViewSet):
    queryset = Group.objects.all()
    serializer_class = GroupSerializer
