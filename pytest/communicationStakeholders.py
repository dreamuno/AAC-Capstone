import pytest
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
import os

"""
Communication Stakeholder Options Feature

New options were added to communicate to stakeholders more clearly. 
This script will verify that user can submit forms with new options selected
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

def test_communication_options():
    """
    go through and click through some of these options. There really isn't a way
    to assert that these are correct. It all depends on the state of the 
    checkbox when the program gets to it. 
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
    driver.find_element_by_link_text("I. SLOs").click()
    driver.find_element_by_link_text("Edit").click()
    driver.find_element_by_id("id_internal_stakeholders_1").click()
    driver.find_element_by_id("id_internal_stakeholders_2").click()
    driver.find_element_by_id("id_external_stakeholders_2").click()
    driver.find_element_by_xpath("//ul[@id='id_external_stakeholders']/li[4]/label").click()
    driver.find_element_by_id("id_external_stakeholders_4").click()
    driver.find_element_by_xpath("//button[@type='submit']").click()

def test_end():
    """
    Close Web Driver
    """
    driver.close()


