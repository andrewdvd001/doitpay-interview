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

Verify success message appears contain "Welcome" message
    Wait Until Element Is Visible    Welcome    timeout=${SELENIUM_TIMEOUT}

Verify error message appear contain "Username required"
    Wait Until Element Is Visible    Username required    timeout=${SELENIUM_TIMEOUT}

Verify error message appear contain "Password required"
    Wait Until Element Is Visible    Password required    timeout=${SELENIUM_TIMEOUT}

Verify error message appear contain "Wrong Username or Password"
    Wait Until Element Is Visible    Wrong Username or Password    timeout=${SELENIUM_TIMEOUT}