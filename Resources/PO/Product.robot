*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    wait until page contains    Back to results

Add to cart
    click button    id=add-to-cart-button

