"""
URL configuration for university_project_core project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from rest_framework_simplejwt import views as jwt_views
from drf_spectacular.views import SpectacularAPIView, SpectacularRedocView, SpectacularSwaggerView
# from django.conf.urls.static import static


urlpatterns = [
    # Obtain the new JWT token given the username and password
    path('auth/',
         jwt_views.TokenObtainPairView.as_view(),
         name='token_obtain_pair'),
    # Obtain a new JWT refresh tokes
    path('auth/refresh/',
         jwt_views.TokenRefreshView.as_view(),
         name='token_refresh'),
    path('admin/', admin.site.urls),
    path('academicprograms/', include('academicPrograms.urls')),
    path('subjects/', include('subjects.urls')),
    # TODO: Why i in the holy fuck this isn showing in the swagger-ui?
    path('groups/', include('groups.urls')),
    path('users/', include('users.urls')),
    path('api/schema/', SpectacularAPIView.as_view(), name='schema'),
    path('api/schema/swagger-ui/',
         SpectacularSwaggerView.as_view(url_name='schema'), name='swagger-ui'),
    path('api/schema/redoc/',
         SpectacularRedocView.as_view(url_name='schema'), name='redoc'),
]
