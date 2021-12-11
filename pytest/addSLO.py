import pytest
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
import keyboard
import os

"""
Add SLO with Accrediting Body feature:

New feature implemented where users can specify that SLOs are coming from an accrediting body. 
Script will create a new slo and verify that slo was created using new option. 
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

def test_add_slo():
    """
    Will create a new slo with accrediting body option check. Go back to summary page and
    verify that slo was created with title "Test".
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
    driver.find_element_by_id("outline").click()
    driver.find_element_by_id("id_text").click()
    driver.find_element_by_id("id_text").clear()
    driver.find_element_by_id("id_text").send_keys("Test")
    driver.find_element_by_id("id_blooms").click()
    Select(driver.find_element_by_id("id_blooms")).select_by_visible_text("Synthesis")
    driver.find_element_by_id("id_gradGoals_0").click()
    driver.find_element_by_id("id_gradGoals_3").click()
    driver.find_element_by_id("id_accreditingBody").click()
    driver.find_element_by_xpath("//button[@type='submit']").click()
    driver.find_element_by_xpath("(.//*[normalize-space(text()) and normalize-space(.)='Synthesis:'])[1]/following::a[1]").click()
    
    #This will check to see if we successfully added an slo with accrediting body option enabled
    #check if option was selected and saved
    result = driver.find_element_by_xpath("//input[@name='accreditingBody']").is_selected()
    if(result == True):
        return True
    return False
    

def test_end():
    """
    Close Web Driver
    """
    driver.close()