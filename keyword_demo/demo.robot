*** Settings ***

*** Test Cases ***
Test case 1
# The first words should be capitalized
    Do Something
    Do Something Else

Test case 2
    Do Another Thing
    Do Something Else

*** Keywords ***
Do Something
    Log    I am doing something...

Do Something Else
    Log    I am doing something else...

Do Another Thing
    Log    I am doing another thing...

Do Something Again
    Log    I am doing something again...

