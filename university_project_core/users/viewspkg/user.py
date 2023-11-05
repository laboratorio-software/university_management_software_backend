from rest_framework import viewsets
from ..models.user import UserProfile
from ..serializers.user import UserProfileSerializer


class UserProfileViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = UserProfile.objects.all()
    serializer_class = UserProfileSerializer
