*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/Amazon.robot
Resource    ../Resources/Common.robot

*** Variables ***

*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic info about the test
    [Tags]  Smoke

    Common.Begin web test
    Amazon.Search for products
    Amazon.Select product from search results
    Amazon.Add product to cart
    Amazon.Proceed to check out
    Common.End web test




