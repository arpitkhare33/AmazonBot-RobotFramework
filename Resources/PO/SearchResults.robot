*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Search Completed
    wait until page contains    results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]    Clicks on the first product in the search results list
#    sleep    3s
    click element       //div[@data-index="2"]
#    sleep    2s
#    //*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]
#
#    //*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[2]/div/div/div/div/div/div/div[1]/span
#
##search > div.s-desktop-width-max.s-desktop-content.s-opposite-dir.sg-row > div.s-matching-dir.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span.rush-component.s-latency-cf-section > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(2) > div > div > div > div > div > div > div.s-product-image-container.aok-relative.s-image-overlay-grey.s-text-center.s-padding-left-small.s-padding-right-small.puis-spacing-small.s-height-equalized > span
#
##search > div.s-desktop-width-max.s-desktop-content.s-opposite-dir.sg-row > div.s-matching-dir.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span.rush-component.s-latency-cf-section > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(3) > div > div > div > div > div > div > div.s-product-image-container.aok-relative.s-image-overlay-grey.s-text-center.s-padding-left-small.s-padding-right-small.puis-spacing-small.s-height-equalized > span