*** Settings ***
Resource    ../resources/commonWeb.robot
Resource    ../resources/loginPageObject/loginApp.robot
Resource    ../variables/loginVariables.robot

Test Setup    Begin Web Test
Test Teardown    End Web Test


*** Test Cases ***
User successfully login with valid credential display welcome message
    [Tags]    ID001    Functional    Smoke
    loginApp.Input Username    ${VALID_USERNAME}
    loginApp.Input Password    ${VALID_PASSWORD}
    loginApp.Click Login Button
    loginApp.Verify welcome message visible

User failed login with missing username display username is required message
    [Tags]    ID002    Functional
    loginApp.Input Username    ${EMPTY}
    loginApp.Input Password    ${VALID_PASSWORD}
    loginApp.Click Login Button
    loginApp.Verify error message    Username is required

User failed login with missing password display password is required message
    [Tags]    ID003    Functional
    loginApp.Input Username    ${VALID_USERNAME}
    loginApp.Input Password    ${EMPTY}
    loginApp.Click Login Button
    loginApp.Verify error message    Password is required

User failed login with invalid Username display wrong username or password message
    [Tags]    ID004    Functional
    loginApp.Input Username    ${INVALID_USERNAME}
    loginApp.Input Password    ${VALID_PASSWORD}
    loginApp.Click Login Button
    loginApp.Verify error message    Wrong Username or Password


User failed login with invalid Password display "Wrong Username or Password" message
    [Tags]    ID005    Functional
    loginApp.Input Username    ${VALID_USERNAME}
    loginApp.Input Password    ${INVALID_PASSWORD}
    loginApp.Click Login Button
    loginApp.Verify error message    Wromg Username or Password