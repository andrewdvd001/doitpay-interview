*** Settings ***
Library    SeleniumLibrary
Resource    ../../variables/loginVariables.robot

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${USERNAME_FIELD}    timeout=${SELENIUM_TIMEOUT}
    Input Text    ${USERNAME_FIELD}   ${username}

Input Password
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${PASSWORD_FIELD}    timeout=${SELENIUM_TIMEOUT}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Login Button
    Wait Until Element Is Visible    ${SUBMIT_BUTTON}    timeout=${SELENIUM_TIMEOUT}
    Click Button    ${SUBMIT_BUTTON}

Verify welcome message is visible
    [Arguments]    ${expected_success_message}=Welcome
    Page Should Contain    ${expected_success_message}

Verify error message
    [Arguments]    ${expected_error_message}
    Page Should Contain   ${expected_error_message}

Page Should Not Contain JavaScript Alerts
    Alert Should Not Be Present
