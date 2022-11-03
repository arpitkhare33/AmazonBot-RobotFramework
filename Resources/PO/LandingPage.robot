*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Load
    go to    ${START_URL}

Verify Page Loaded
    wait until element is visible    xpath=//*[@id="nav-search-submit-button"]
