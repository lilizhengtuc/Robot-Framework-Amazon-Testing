*** Settings ***
Library    SeleniumLibrary

*** Variables ***



*** Keywords ***
Load
    go to    ${START_URL}


Verify Page Loaded
    wait until page contains    Customer Service

Maximize Window
    maximize browser window
