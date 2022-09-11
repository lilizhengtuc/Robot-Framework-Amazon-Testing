*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/SearchResults.robot
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/SignIn.robot
Library    SeleniumLibrary
*** Keywords ***

Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    LandingPage.Maximize Window
    SearchResults.Enter Search Keyword
    SearchResults.Click Search Button
    SearchResults.Wait for Results Page


Select Product from Search Results
    SearchResults.Click Product
    SearchResults.Product Page


Add Product to Cart
    Cart.Add to Cart
    Cart.Product Added

Begin Checkout
    Cart.Click on Checkout Button
    SignIn.Wait for Sign-in Page


