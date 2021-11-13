# Generated by Django 3.1.6 on 2021-11-11 22:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('makeReports', '0012_sloinreport_accreditingbody'),
    ]

    operations = [
        migrations.AddField(
            model_name='assessment',
            name='accreditingBody',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='assessment',
            name='directMeasure',
            field=models.BooleanField(default=False, verbose_name='direct measure'),
        ),
        migrations.AlterField(
            model_name='assessmentversion',
            name='allStudents',
            field=models.BooleanField(default='False', verbose_name='all students assessed'),
        ),
        migrations.AlterField(
            model_name='assessmentversion',
            name='target',
            field=models.PositiveIntegerField(default=100),
        ),
    ]
