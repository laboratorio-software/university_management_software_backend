from django.urls import path, include
from rest_framework import routers
# from rest_framework.documentation import include_docs_urls

from .viewspkg.user import UserProfileViewSet
from .viewspkg.identityDocumentType import IdentityDocumentTypeViewSet
from .viewspkg.role import RoleViewSet

router = routers.DefaultRouter()
router.register(r'users', UserProfileViewSet, 'users')
router.register(r'identitydocumenttypes',
                IdentityDocumentTypeViewSet, 'identitydocumenttypes')
router.register(r'roles', RoleViewSet, 'roles')


urlpatterns = [
    path("api/", include(router.urls))
    # path("api/docs/", include_docs_urls(title="Users API"))
]
