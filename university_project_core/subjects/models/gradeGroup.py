from django.db import models
# from .subject import Subject

APPROVED = 'APROBADO'
REPROVED = 'REPROBADO'
GROUP_STATE_CHOICES = [(APPROVED, 'Aprobado'), (REPROVED, 'Reprobado')]


class GradeGroup(models.Model):

    name = models.CharField(max_length=25)
    # subject_id = models.ForeignKey(Subject, on_delete=models.CASCADE)
    # TODO: Add this validation '1.0 <= puntaje <= 5.0']
    # grade_group_score = models.FloatField()  # TODO: Do we need this?
    # TODO: Add this validation  'si puntaje >= 3.0 -> APROBADO, demás REPROBADO ']
    # grade_group_state = models.CharField(
    #     max_length=10, choices=GROUP_STATE_CHOICES)  # TODO: Do we need this?
    # TODO: Add this validation '0.0 <= porcentaje_en_asignatura <= 1.0' ]
    # a% coudl 0.0, 1.0, 0.5, 0.56, ...
    percentage_in_subject = models.FloatField()
    # is_final_general_grade = models.BooleanField(
    #     default=False)  # TODO: Do we need this?
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    @property
    def as_object(self) -> dict:
        grade_group_as_object = {
            'id': self.id,
            'name': self.name,
            # 'subject_id': self.subject_id,
            # 'score': self.grade_group_score,
            # 'grade': self.grade_group_state,
            'percentage_in_subject': self.percentage_in_subject,
            # 'is_final_general_grade': self.is_final_general_grade,
            'created': self.created,
            'updated': self.updated
        }
        return grade_group_as_object

    def __str__(self):
        return str(self.id) + "-" + self.name + "-" + str(self.grade_group_score) + str(self.grade_group_state)
