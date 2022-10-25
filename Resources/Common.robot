*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin web test
    open browser    about:blank    chrome

End web test
    close browser