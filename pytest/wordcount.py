import pytest
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
import keyboard
import os

"""
Word Count Feature:

Summernote text boxes now give live feedback to user on character limit.
This python test script will test to see if character limit is visible. 
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

def test_wordcount():
    """
    Web driver will open stakeholder comments text box to see if character limit is visible to 
    user. If it is, character limit feature is working.
    """

    #go through and click through some of these options. There really isn't a way
    #to assert that these are correct. It all depends on the state of the 
    #checkbox when the program gets to it. 
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
    #This will verify that the word counter will specify how many characters the user has left
    driver.find_element_by_xpath("//span[contains(text(), 'character(s) left')]")

def test_end():
    """
    Close Web Driver
    """

    driver.close()
