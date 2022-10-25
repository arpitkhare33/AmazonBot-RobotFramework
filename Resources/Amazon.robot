*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Search for products
    go to    http://www.amazon.in
    wait until element is visible    xpath=//*[@id="nav-search-submit-button"]
    input text    id=twotabsearchtextbox    ferrari 458
    click button    id=nav-search-submit-button
    wait until page contains    results for "ferrari 458"

Select product from search results
    click element    xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div/div/div[2]/div[1]/h2/a
    switch window    new
    wait until page contains    Back to results

Add product to cart
    click button    id=add-to-cart-button
    wait until page contains    Added to Cart

Proceed to check out
    sleep    3s
    click element    name=proceedToRetailCheckout


