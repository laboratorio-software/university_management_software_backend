from ..models.user import UserProfile
from django.contrib.auth.models import User
from rest_framework import serializers


class DjangoUserSerializer(serializers.ModelSerializer):

    def create(self, validated_data):
        password = validated_data.pop('password', None)
        instance = self.Meta.model(**validated_data)
        if password is not None:
            instance.set_password(password)
        instance.save()
        return instance

    class Meta:
        model = User
        fields = ["password", "username", "email"]


class UserProfileSerializer(serializers.ModelSerializer):
    # user = DjangoUserSerializer(read_only=True)

    class Meta:
        model = UserProfile
        fields = "__all__"
