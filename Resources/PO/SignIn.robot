*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    page should contain textfield    ap_email