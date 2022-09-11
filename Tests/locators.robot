*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
search for product
    OPEN BROWSER    https://www.amazon.se    chrome
    sleep    3s
    # input text    id=twotabsearchtextbox    Wrangler dam
    # sleep    3s
    # click button    css=#nav-search-submit-button
    # click button    xpath=//*[@id="nav-search-submit-button"]
    # sleep    3s
    # click link    xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[4]/div/div/div/div/div[2]/div[2]/h2/a
    click image    Urval från Play-Doh, Nerf, Disney, Super Soaker


*** Keywords ***
