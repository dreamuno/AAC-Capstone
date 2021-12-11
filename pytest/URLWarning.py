import pytest
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
import keyboard
import os

"""
Warning URL Feature:

New feature will warn the user about adding a url in a summernote text box
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

def test_url_warning():
    """
    Will test for warning when URL is tested.
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
    keyboard.write("http://www.google.com")
    keyboard.send("enter")
    #This will verify the assessment was made successfully with accrediting Body option enabled
    #and the slo title is called test
    result = driver.find_element_by_xpath("//span[contains(text(),'Warning: External links are not recommended.')]").text
    if(result == 'Warning: External links are not recommended.'):
        return True
    return False

def test_end():
    """
    Close Web Driver
    """
    driver.close()