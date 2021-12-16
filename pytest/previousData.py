import pytest
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
import keyboard
import os

"""
Previous Data Feature:

Users have options to view previous data from slos, assessments and data analytics
This script will test the previous data views in the assessment.
"""

def test_setup():
    """
    Set up python webdriver.
    """
    global driver
    directory = str(os.getcwd()) + '\chromedriver\chromedriver.exe'
    driver = webdriver.Chrome(executable_path=directory)
    driver.implicitly_wait(2)
    driver.maximize_window()

def test_view_previous():
    """
    will click on view previous button in the web application
    """
    driver.get("http://127.0.0.1:8000/")
    driver.find_element_by_xpath("//body").click()
    driver.find_element_by_link_text("SIGN IN").click()
    driver.find_element_by_name("username").click()
    driver.find_element_by_name("username").clear()
    driver.find_element_by_name("username").send_keys("aaateam")
    driver.find_element_by_xpath("//body").click()
    driver.find_element_by_name("password").clear()
    driver.find_element_by_name("password").send_keys("tr1pleAteam!")
    driver.find_element_by_name("password").send_keys(Keys.ENTER)
    driver.find_element_by_link_text("START").click()
    driver.find_element_by_link_text("II. Assessments").click()
    driver.find_element_by_xpath("(.//*[normalize-space(text()) and normalize-space(.)='Previous Assessments'])[1]/following::button[1]").click()

def test_end():
    """
    Close Web Driver
    """
    driver.close()