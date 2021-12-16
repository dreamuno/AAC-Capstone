"""
This file contains models most directly related to Student Learning Outcomes
"""
from django.db import models
from django.utils.safestring import mark_safe
from makeReports.choices import BLOOMS_CHOICES
from makeReports.choices import ACCREDITING_BODY_MEASURES
from makeReports.choices import ACCREDITING_BODY_DOMAIN
from .basic_models import NonArchivedManager

class SLO(models.Model):
    """
    Model collects SLO in reports which are ostensibly  the same except minor changes, 
    includes only the attributes which should never change and counts how often it is used
    """
    blooms = models.CharField(choices=BLOOMS_CHOICES,max_length=50, verbose_name="Bloom's taxonomy level")
    gradGoals = models.ManyToManyField('GradGoal', verbose_name="graduate-level goals")
    numberOfUses = models.PositiveIntegerField(default=0, verbose_name="number of uses of this SLO")
    imported = models.BooleanField(default = False)
    importedFrom = models.CharField(default = "", max_length = 50, verbose_name="imported SLO")

class SLOInReport(models.Model):
    """
    A specific version of an SLO which occurs within a report
    """
    date = models.DateField()
    goalText = models.CharField(max_length=1000, verbose_name="goal text")
    slo = models.ForeignKey(SLO, on_delete=models.CASCADE, verbose_name="SLO")    
    changedFromPrior = models.BooleanField(verbose_name="changed from prior version")
    report = models.ForeignKey('Report', on_delete=models.CASCADE)
    number = models.PositiveIntegerField(default=1)
    numberOfAssess = models.PositiveIntegerField(default=0, verbose_name="number of assessments")
    accreditingBody = models.BooleanField(verbose_name="Accrediting_body", default=False)
    def __str__(self):
        return self.goalText

class GradGoal(models.Model):
    """
    A graduate goal graduate level programs may obtain
    """
    text = models.CharField(max_length=600)
    active = models.BooleanField(default=True)

    objects = models.Manager()
    active_objects = NonArchivedManager()
    def __str__(self):
        return mark_safe(self.text)
class SLOsToStakeholder(models.Model):
    """
    Text describing how SLOs are communicated to stakeholders
    """
    #internal options
    faculty = models.BooleanField(verbose_name="Faculty/Staff", default=False)
    students = models.BooleanField(verbose_name="Students", default=False)
    other_internal = models.BooleanField(verbose_name="Other-internal", default=False)

    #external options
    prospect_students = models.BooleanField(verbose_name="Prospective Students", default=False)
    alumni = models.BooleanField(verbose_name="Alumni", default=False)
    employers = models.BooleanField(verbose_name="Employers", default=False)
    community_members = models.BooleanField(verbose_name="Community Members", default=False)
    other_external = models.BooleanField(verbose_name="Other-External", default=False)

    text = models.CharField(max_length=2000)
    report = models.ForeignKey('Report', on_delete=models.CASCADE, null=True)
    def __str__(self):
        return mark_safe(self.text)

class AccreditingBody(models.Model):
    """
    Check box for accrediting bodies
    """
    AccreditingBody = models.BooleanField("Accrediting Body", default='False')