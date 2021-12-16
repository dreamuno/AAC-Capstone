# Generated by Django 3.1.6 on 2021-12-04 01:49

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('makeReports', '0006_requiredfieldsetting'),
    ]

    operations = [
        migrations.CreateModel(
            name='AccreditingBody',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('AccreditingBody', models.BooleanField(default='False', verbose_name='Accrediting Body')),
            ],
        ),
        migrations.AddField(
            model_name='assessment',
            name='accreditingBody',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='assessmentversion',
            name='accreditingBody',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='report',
            name='accreditingBodyPrograms',
            field=models.CharField(blank=True, max_length=500, null=True),
        ),
        migrations.AddField(
            model_name='report',
            name='users',
            field=models.CharField(blank=True, default='-', max_length=100),
        ),
        migrations.AddField(
            model_name='resultcommunicate',
            name='date',
            field=models.DateField(default=datetime.datetime(2021, 12, 4, 1, 49, 57, 207318, tzinfo=utc)),
        ),
        migrations.AddField(
            model_name='sloinreport',
            name='accreditingBody',
            field=models.BooleanField(default=False, verbose_name='Accrediting_body'),
        ),
        migrations.AddField(
            model_name='slostostakeholder',
            name='alumni',
            field=models.BooleanField(default=False, verbose_name='Alumni'),
        ),
        migrations.AddField(
            model_name='slostostakeholder',
            name='community_members',
            field=models.BooleanField(default=False, verbose_name='Community Members'),
        ),
        migrations.AddField(
            model_name='slostostakeholder',
            name='employers',
            field=models.BooleanField(default=False, verbose_name='Employers'),
        ),
        migrations.AddField(
            model_name='slostostakeholder',
            name='faculty',
            field=models.BooleanField(default=False, verbose_name='Faculty/Staff'),
        ),
        migrations.AddField(
            model_name='slostostakeholder',
            name='other_external',
            field=models.BooleanField(default=False, verbose_name='Other-External'),
        ),
        migrations.AddField(
            model_name='slostostakeholder',
            name='other_internal',
            field=models.BooleanField(default=False, verbose_name='Other-internal'),
        ),
        migrations.AddField(
            model_name='slostostakeholder',
            name='prospect_students',
            field=models.BooleanField(default=False, verbose_name='Prospective Students'),
        ),
        migrations.AddField(
            model_name='slostostakeholder',
            name='students',
            field=models.BooleanField(default=False, verbose_name='Students'),
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
