# Generated by Django 3.1.6 on 2021-11-09 06:10

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('makeReports', '0010_auto_20211108_2346'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='sloinreport',
            name='accreditingBody',
        ),
    ]
