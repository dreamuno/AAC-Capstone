import pytest
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
import keyboard
import os

"""
Assign User to Report Feature

New feature implemented that allows users to assign a person/multiple persons to a report
Text is not constricted to only usernames. Text box allows users to input any text.  
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

def test_assign_user():
    """
    
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
    driver.find_element_by_link_text("Report Information").click()
    driver.find_element_by_xpath("(.//*[normalize-space(text()) and normalize-space(.)='Logout'])[1]/following::div[1]").click()
    driver.find_element_by_id("id_users").clear()
    driver.find_element_by_id("id_users").send_keys("reporter")
    driver.find_element_by_xpath("(.//*[normalize-space(text()) and normalize-space(.)='View Rubric'])[1]/following::div[1]").click()
    driver.find_element_by_xpath("//button[@type='submit']").click()
    driver.find_element_by_link_text("Report Information").click()

    #We recieved that text is being saved in this place on the reportd
    #Please clear out field before running this file
    #It is the first report in the home page
    test = driver.find_element_by_xpath("//input[@name='users']").text
    if(test == 'test for accredited body information on program'):
        return True
    return False
    
    
def test_end():
    """
    Close Web Driver
    """
    driver.close()