# Generated by Django 4.2.1 on 2023-12-02 06:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('subjects', '0011_remove_grade_name'),
    ]

    operations = [
        migrations.AlterField(
            model_name='groupwithgroupsofgrades',
            name='created',
            field=models.DateTimeField(auto_now_add=True),
        ),
    ]
