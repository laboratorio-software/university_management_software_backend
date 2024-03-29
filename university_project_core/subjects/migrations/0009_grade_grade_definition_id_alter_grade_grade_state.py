# Generated by Django 4.2.1 on 2023-12-02 02:24

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('subjects', '0008_remove_grade_grade_group_id_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='grade',
            name='grade_definition_id',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='subjects.gradedefinition'),
        ),
        migrations.AlterField(
            model_name='grade',
            name='grade_state',
            field=models.CharField(choices=[('APROBADO', 'Aprobado'), ('REPROBADO', 'Reprobado')], default='REPROBADO', max_length=10),
        ),
    ]
