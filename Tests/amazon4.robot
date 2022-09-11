*** Settings ***
Documentation    This is some basic info
Resource    ../Resources/AmazonApp.robot
Resource    ../Resources/Common.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test



*** Variables ***
${BROWSER} =    chrome
${START_URL} =    https://www.amazon.com/
${KEYWORD} =    python crash course

*** Test Cases ***

Test01: User can search for products
    [Documentation]    This is some basic info about the test
    [Tags]    Regression
    AmazonApp.Search for Products

Test02: User must log in
    [Documentation]    This is some basic info about the test
    [Tags]    Regression
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout


