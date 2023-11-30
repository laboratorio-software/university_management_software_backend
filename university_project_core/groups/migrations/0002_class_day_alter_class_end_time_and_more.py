# Generated by Django 4.2.1 on 2023-11-28 17:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('groups', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='class',
            name='day',
            field=models.CharField(choices=[('LUNES', 'Lunes'), ('MARTES', 'Martes'), ('MIERCOLES', 'Miercoles'), ('JUEVES', 'Jueves'), ('VIERNES', 'Viernes'), ('SABADO', 'Sabado')], default='', max_length=10),
        ),
        migrations.AlterField(
            model_name='class',
            name='end_time',
            field=models.CharField(choices=[('7:00 AM', '7:00 AM'), ('8:00 AM', '8:00 AM'), ('9:00 AM', '9:00 AM'), ('10:00 AM', '10:00 AM'), ('11:00 AM', '11:00 AM'), ('12:00 M', '12:00 M'), ('1:00 PM', '1:00 PM'), ('2:00 PM', '2:00 PM'), ('3:00 PM', '3:00 PM'), ('4:00 PM', '4:00 PM'), ('5:00 PM', '5:00 PM'), ('6:00 PM', '6:00 PM'), ('7:00 PM', '7:00 PM'), ('8:00 PM', '8:00 PM'), ('9:00 PM', '9:00 PM'), ('10:00 PM', '10:00 PM')], default='', max_length=8),
        ),
        migrations.AlterField(
            model_name='class',
            name='start_time',
            field=models.CharField(choices=[('7:00 AM', '7:00 AM'), ('8:00 AM', '8:00 AM'), ('9:00 AM', '9:00 AM'), ('10:00 AM', '10:00 AM'), ('11:00 AM', '11:00 AM'), ('12:00 M', '12:00 M'), ('1:00 PM', '1:00 PM'), ('2:00 PM', '2:00 PM'), ('3:00 PM', '3:00 PM'), ('4:00 PM', '4:00 PM'), ('5:00 PM', '5:00 PM'), ('6:00 PM', '6:00 PM'), ('7:00 PM', '7:00 PM'), ('8:00 PM', '8:00 PM'), ('9:00 PM', '9:00 PM'), ('10:00 PM', '10:00 PM')], default='', max_length=8),
        ),
    ]