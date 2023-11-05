from django.db import models
from users.models import UserProfile
from .gradeGroup import GradeGroup

APPROVED = 'APROBADO'
REPROVED = 'REPROBADO'
GRADE_GROUP_CHOICES = [(APPROVED, 'Aprobado'), (REPROVED, 'Reprobado')]


class Grade(models.Model):

    name = models.CharField(max_length=20)
    grade_group_id = models.ForeignKey(GradeGroup, on_delete=models.CASCADE)
    user_id = models.ForeignKey(UserProfile, on_delete=models.CASCADE)
    # TODO: Add this validation '1.0 <= puntaje <= 5.0']
    grade_score = models.FloatField()
    # TODO: Add this validation 'si puntaje >= 3.0 -> APROBADO, demás REPROBADO ']
    grade_state = models.CharField(
        max_length=10, choices=GRADE_GROUP_CHOICES)
    # TODO: Add this validation '0.0 <= porcentaje_en_grupo <= 1.0'
    percentage_in_group = models.FloatField()
    created = models.DateTimeField(auto_created=True)
    updated = models.DateTimeField(auto_now=True)
