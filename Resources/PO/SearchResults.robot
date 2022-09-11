*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Enter Search Keyword
    input text    id=twotabsearchtextbox    ${KEYWORD}

Click Search Button
    click button    id=nav-search-submit-button

Wait for Results Page
    wait until page contains   results for "${KEYWORD}"

Click Product
    click link    xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div/div[2]/div/div/div[1]/h2/a

Product Page
    wait until page contains    Back to results
