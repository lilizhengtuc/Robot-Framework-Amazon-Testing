*** Settings ***
Documentation    This is some basic info
Library    SeleniumLibrary


*** Variables ***


*** Test Cases ***
User must log in
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
    Begin Web Test
    Search for Products
    Select Product from Search Results
    Add Product to Cart
    Begin Checkout
    End Web Test


*** Keywords ***
Begin Web Test
    Open Browser    about:blank  chrome

Search for Products
    Go To    https://www.amazon.com/
    maximize browser window
    wait until page contains    Customer Service
    input text    id=twotabsearchtextbox    python crash course
    click button    id=nav-search-submit-button
    wait until page contains   results for "python crash course"

Select Product from Search Results
    click link    xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div/div[2]/div/div/div[1]/h2/a
    wait until page contains    Back to results

Add Product to Cart
    click button    id=add-to-cart-button
    wait until page contains    Added to Cart

Begin Checkout
    submit form    id=sw-ptc-form
    wait until page contains    Sign-In

End Web Test
    sleep    2s
    close browser