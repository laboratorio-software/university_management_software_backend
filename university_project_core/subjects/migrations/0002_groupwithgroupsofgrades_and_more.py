# Generated by Django 4.2.1 on 2023-11-28 01:57

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('academicPrograms', '0001_initial'),
        ('groups', '0001_initial'),
        ('subjects', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='GroupWithGroupsOfGrades',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created', models.DateTimeField(auto_created=True)),
                ('updated', models.DateTimeField(auto_now=True)),
                ('grade_group_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='subjects.gradegroup')),
                ('group_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='groups.group')),
            ],
        ),
        migrations.AddField(
            model_name='extensioncourse',
            name='academic_program_id',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='academicPrograms.academicprogram'),
        ),
        migrations.DeleteModel(
            name='SubjectWithGroupsOfGrades',
        ),
    ]
