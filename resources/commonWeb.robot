*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/loginVariables.robot

*** Keywords ***
Begin Web Test
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Delete All Cookies
    Set Selenium Timeout    ${SELENIUM_TIMEOUT}

End Web Test
    Close All Browsers