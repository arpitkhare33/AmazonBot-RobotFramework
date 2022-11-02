*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Load
    go to    http://www.amazon.in

Verify Page Loaded
    wait until element is visible    xpath=//*[@id="nav-search-submit-button"]
