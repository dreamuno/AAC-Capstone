"""
This tests the decision and action forms work as expected
"""
from django.test import TestCase
from django.urls import reverse
from makeReports.models import *
from unittest import mock
from django.http import HttpResponse
import requests
from model_bakery import baker
from django import forms
from makeReports.forms import *
from datetime import datetime

class DAFormsTest(TestCase):
    """
    Tests forms related to decisions and actions
    """
    def test_valid(self):
        """
        Tests DecActForm1Box accepts valid data
        """
        f = DecActForm1Box({
            'text':"We will modify the curriculum to better improve outcomes."
        })
        self.assertTrue(f.is_valid())
    def test_toolong(self):
        """
        Tests DecActForm1Box rejects too long of text
        """
        f = DecActForm1Box({
            'text':"We will modify the curriculum to better improve outcomes."*900
        })
        self.assertFalse(f.is_valid())