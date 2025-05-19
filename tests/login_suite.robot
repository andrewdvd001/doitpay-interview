*** Settings ***
Resource    ../resources/commonWeb.robot
Resource    ../resources/loginPageObject/loginApp.robot
Resource    ../variables/loginVariables.robot

Test Setup    Begin Web Test
Test Teardown    End Web Test


*** Test Cases ***
ID001 - User successfully login with valid credential display welcome message
    [Tags]    Functional    Smoke
    loginApp.Input Username    ${VALID_USERNAME}
    loginApp.Input Password    ${VALID_PASSWORD}
    loginApp.Click Login Button
    loginApp.Verify welcome message is visible

ID002 - User failed login with missing username display username is required message
    [Tags]    Functional
    loginApp.Input Username    ${EMPTY}
    loginApp.Input Password    ${VALID_PASSWORD}
    loginApp.Click Login Button
    loginApp.Verify error message    Username is required

ID003 - User failed login with missing password display password is required message
    [Tags]    Functional
    loginApp.Input Username    ${VALID_USERNAME}
    loginApp.Input Password    ${EMPTY}
    loginApp.Click Login Button
    loginApp.Verify error message    Password is required

ID004 - User failed login with invalid Username display wrong username or password message
    [Tags]    Functional
    loginApp.Input Username    ${INVALID_USERNAME}
    loginApp.Input Password    ${VALID_PASSWORD}
    loginApp.Click Login Button
    loginApp.Verify error message    Wrong Username or Password

ID005 - User failed login with invalid Password display wrong username or password message
    [Tags]    Functional
    loginApp.Input Username    ${VALID_USERNAME}
    loginApp.Input Password    ${INVALID_PASSWORD}
    loginApp.Click Login Button
    loginApp.Verify error message    Wrong Username or Password

ID006 - User failed login with missing password and password display username and password are required message
    [Tags]    Functional
    loginApp.Input Username    ${VALID_USERNAME}
    loginApp.Input Password    ${EMPTY}
    loginApp.Click Login Button
    loginApp.Verify error message    Username and Password are required

ID007 - User failed login with SQL Injection attack display wrong username or password message
    [Tags]    Security
    loginApp.Input Username    ${SQL_PAYLOAD}
    loginApp.Input Password    ${SQL_PAYLOAD}
    loginApp.Click Login Button
    loginApp.Verify error message    Wrong Username or Password

ID008 - User failed login with XSS attack display wrong username or password message
    [Tags]    Security
    loginApp.Input Username    ${XSS_PAYLOAD}
    loginApp.Input Password    ${XSS_PAYLOAD}
    loginApp.Click Login Button
    loginApp.Verify error message    Wrong Username or Password
    LoginApp.Page Should Not Contain JavaScript Alerts
