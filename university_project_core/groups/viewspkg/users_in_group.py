from rest_framework import viewsets
from ..models.users_in_group import UsersInGroup
from ..serializers.users_in_group import UsersInGroupSerializer


class UsersInGroupViewSet(viewsets.ViewSet):
    queryset = UsersInGroup.objects.all()
    serializer_class = UsersInGroupSerializer
