# Generated by Django 4.2.1 on 2023-11-28 02:31

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('subjects', '0002_groupwithgroupsofgrades_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='gradegroup',
            name='subject_id',
        ),
        migrations.RemoveField(
            model_name='subject',
            name='academic_program_id',
        ),
    ]