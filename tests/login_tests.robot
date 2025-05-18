*** Settings ***
Resource    ../resources/commonWeb.robot
Resource    ../resources/loginPageObject/loginApp.robot
Resource    ../variables/loginVariables.robot

Test Setup    Begin Web Test
Test Teardown    End Web Test


*** Test Cases ***
User successfully login with valid credential shows "Welcome" message
    [Documentation]    Succesfully login
    [Tags]    ID001    Functional    Smoke
    loginApp.Input Username    ${VALID_USERNAME}
    loginApp.Input Password    ${VALID_PASSWORD}
    loginApp.Click Login Button
    loginApp.Verify success message appears contain "Welcome" message

User failed login with missing username shows "Username required" message
    [Documentation]    Missing username
    [Tags]    ID002    Functional
    loginApp.Input Username    ${EMPTY}
    loginApp.Input Password    ${VALID_PASSWORD}
    loginApp.Click Login Button
    loginApp.Verify error message appear contain "Username required"

User failed login with missing password shows "Password required" message
    [Documentation]    Missing password
    [Tags]    ID003    Functional
    loginApp.Input Username    ${VALID_USERNAME}
    loginApp.Input Password    ${EMPTY}
    loginApp.Click Login Button
    loginApp.Verify error message appear contain "Password required"

User failed login with invalid Username shows "Wrong Username or Password" message
    [Documentation]    invalid username
    [Tags]    ID004    Functional
    loginApp.Input Username    ${INVALID_USERNAME}
    loginApp.Input Password    ${VALID_PASSWORD}
    loginApp.Click Login Button
    loginApp.Verify error message appear contain "Wrong Username or Password"


User failed login with invalid Password shows "Wrong Username or Password" message
    [Documentation]    invalid password
    [Tags]    ID005    Functional
    loginApp.Input Username    ${VALID_USERNAME}
    loginApp.Input Password    ${INVALID_PASSWORD}
    loginApp.Click Login Button
    loginApp.Verify error message appear contain "Wrong Username or Password"

