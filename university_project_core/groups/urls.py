from django.urls import path, include
from rest_framework import routers
from rest_framework.documentation import include_docs_urls

from .viewspkg.classes_in_group import ClassInGroupViewSet
from .viewspkg.classViews import ClassViewSet
from .viewspkg.group import GroupViewSet
from .viewspkg.users_in_group import UsersInGroupViewSet

router = routers.DefaultRouter()
router.register(r'classesingroup', ClassInGroupViewSet, 'classesingroup')
router.register(r'class', ClassViewSet, 'class')
router.register(r'group', GroupViewSet, 'group')
router.register(r'usersingroup', UsersInGroupViewSet, 'usersingroup')

urlpatterns = [
    path("api/", include(router.urls)),
    path("api/docs/", include_docs_urls(title="Groups API"))
]
