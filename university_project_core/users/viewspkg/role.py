from rest_framework import viewsets
from ..models.role import Role
from ..serializers.role import RoleSerializer


class RoleViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = Role.objects.all()
    serializer_class = RoleSerializer
