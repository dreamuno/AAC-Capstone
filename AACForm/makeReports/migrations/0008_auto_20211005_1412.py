# Generated by Django 3.1.6 on 2021-10-05 19:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('makeReports', '0007_accreditingbody'),
    ]

    operations = [
        migrations.AddField(
            model_name='slo',
            name='accreditingBody',
            field=models.BooleanField(default=False, verbose_name='Accrediting_body'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='accreditingbody',
            name='AccreditingBody',
            field=models.BooleanField(default='False', verbose_name='Accrediting Body'),
        ),
    ]