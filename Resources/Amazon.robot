*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/SearchResults.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/TopNav.robot

*** Keywords ***

Search for products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

Select product from search results
    SearchResults.Click Product Link
    switch window    new
    Product.Verify Page Loaded

Add product to cart
    Product.Add to cart
    Cart.Verify Product Added

Proceed to check out
    sleep    3s
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded


