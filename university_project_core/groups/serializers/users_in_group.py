from rest_framework import serializers
from ..models.users_in_group import UsersInGroup


class UsersInGroupSerializer(serializers.ModelSerializer):
    class Meta:
        model = UsersInGroup
        fields = '__all__'
