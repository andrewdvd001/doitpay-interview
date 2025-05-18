*** Settings ***
Library    SeleniumLibrary
Resource    ../../variables/loginVariables.robot

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}   ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Login Button
    Click Button    ${SUBMIT_BUTTON}

Verify success message appears contain "Welcome" message
    Page Should Contain    Welcome

Verify error message appear contain "Username required"
    Page Should Contain    Username required

Verify error message appear contain "Password required"
    Page Should Contain    Password required

Verify error message appear contain "Wrong Username or Password"
    Page Should Contain    Wrong Username or Password