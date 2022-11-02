*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Search Completed
    wait until page contains    results for "ferrari 458"

Click Product Link
    [Documentation]    Clicks on the first product in the search results list
    click element    xpath = //*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[2]/div/div/div/div/div/div/div[1]/span/a/div

