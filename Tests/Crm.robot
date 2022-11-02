*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/Amazon.robot
Resource    ../Resources/Common.robot
Suite Setup    Insert Testing Data
Test Setup    Begin web test
Test Teardown    End web test
Suite Teardown    Cleanup Testing Data

*** Variables ***
# add you variables here

*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic info about the test
    [Tags]  Smoke

    Amazon.Search for products
    Amazon.Select product from search results
    Amazon.Add product to cart
    Amazon.Proceed to check out




