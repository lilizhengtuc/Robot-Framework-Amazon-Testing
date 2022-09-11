*** Settings ***
Documentation    This is some basic info
Library    SeleniumLibrary


*** Variables ***


*** Test Cases ***
User must log in
    [Documentation]    This is some basic info about the test
    [Tags]    Regression
    Open Browser    https://www.amazon.com/  ff
    Close Browser


*** Keywords ***
