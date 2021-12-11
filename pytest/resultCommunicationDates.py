import pytest
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
import keyboard
import os

"""
Add Result Communication Date Feature:

New feature will have the user add a date field to the result commmunication field
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

def test_add_date():
    """
    will add date to the result communication portion of the report.
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
    driver.find_element_by_link_text("III. Data Collection").click()
    driver.find_element_by_xpath("//a[@title='Edit Result Communication']").click()
    driver.find_element_by_id("id_date").click()
    driver.find_element_by_id("id_date").clear()
    driver.find_element_by_id("id_date").send_keys("2021-12-01")
    keyboard.send("tab")
    keyboard.write("test")
    driver.find_element_by_id("outline").click()
    driver.find_element_by_xpath("//a[@title='Edit Result Communication']").click()
    result = driver.find_element_by_xpath("//p[contains(text(),'Dec. 1, 2021')]").text
    if(result == 'Dec. 1, 2021'):
        return True
    return False

def test_end():
    """
    Close Web Driver
    """
    driver.close()