from django.urls import path, include
from rest_framework import routers

from .views import ChatbotAPIView

router = routers.DefaultRouter()

router.register(r'chatbot', ChatbotAPIView, 'chatbot')

url_patterns = [
    path('/api', include(router.urls))
]