# Generated by Django 4.2.1 on 2023-11-26 06:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0003_alter_userprofile_created'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userprofile',
            name='identification_number',
            field=models.CharField(max_length=12, unique=True),
        ),
    ]
