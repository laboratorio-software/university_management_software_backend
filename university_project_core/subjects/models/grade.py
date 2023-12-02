from django.db import models
from users.models import UserProfile

APPROVED = 'APROBADO'
REPROVED = 'REPROBADO'
GRADE_STATE_CHOICES = [(APPROVED, 'Aprobado'), (REPROVED, 'Reprobado')]


class Grade(models.Model):

    user_id = models.ForeignKey(UserProfile, on_delete=models.CASCADE)
    # TODO: Add this validation '1.0 <= puntaje <= 5.0']
    grade_score = models.FloatField(default=0.0)
    grade_definition_id = models.ForeignKey(
        'subjects.GradeDefinition',
        on_delete=models.CASCADE,
        blank=True,
        null=True,)
    # TODO: Add this validation 'si puntaje >= 3.0 -> APROBADO, demás REPROBADO ']
    grade_state = models.CharField(
        max_length=10, choices=GRADE_STATE_CHOICES, default=REPROVED)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self) -> str:
        return str(self.user_id) + "-" + str(self.grade_definition_id) + "-" + str(self.grade_score)
