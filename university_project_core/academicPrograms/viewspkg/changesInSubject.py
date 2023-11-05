from rest_framework import viewsets
from ..models import ChangesInSubject
from ..serializers import ChangesInSubjectSerializer


class ChangesInSubjectViewSet(viewsets.ModelViewSet):
    queryset = ChangesInSubject.objects.all()
    serializer_class = ChangesInSubjectSerializer
