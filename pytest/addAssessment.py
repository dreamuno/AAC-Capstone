import pytest
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
import keyboard
import os

"""
Add Assessment Accrediting Body Feature:

New feature implemented where user only has to fill out 4 fields with accrediting body option 
enabled. This script will test to make sure that users can submit a valid assessment
with new option turned on. 
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

def test_add_assessment():
    """
    Will add assessment with the new accrediting body feature. Should only be able to fill out 
    4 field and will be considered as a valid submission. Will go back and check to make sure that
    assessment was successfully created with title, 'test'.
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
    driver.find_element_by_id("outline").click()
    driver.find_element_by_id("id_slo").click()
    Select(driver.find_element_by_id("id_slo")).select_by_visible_text("Demonstrate machine learning.")
    driver.find_element_by_id("id_accreditingBody").click()
    driver.find_element_by_id("id_title").click()
    driver.find_element_by_id("id_title").clear()
    driver.find_element_by_id("id_title").send_keys("test")
    keyboard.send("tab")
    keyboard.write("test")
    driver.find_element_by_id("id_domain_0").click()
    driver.find_element_by_id("id_domain_2").click()
    driver.find_element_by_xpath("//button[@type='submit']").click()
    driver.find_element_by_xpath("(.//*[normalize-space(text()) and normalize-space(.)='Options'])[3]/following::a[1]").click()
    #This will verify the assessment was made successfully with accrediting Body option enabled
    result = driver.find_element_by_xpath("//input[@name='accreditingBody']").is_selected()
    if(result == True):
        return True
    return False

def test_end():
    """
    Close Web Driver
    """
    driver.close()