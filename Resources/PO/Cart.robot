*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Add to Cart
    click button    id=add-to-cart-button

Product Added
    wait until page contains    Added to Cart

Click on Checkout Button
    submit form    id=sw-ptc-form