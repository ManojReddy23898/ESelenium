*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Click on Sign-in/Signup Button
    [Documentation]    This keyword is used to click on sign in/sign up button
    [Arguments]    ${signin_locator}
    Click Element    ${signin_locator}

Enter Email
    [Documentation]    This keyword is used to enter the email
    [Arguments]    ${email_locator}    ${email_data}
    Input Text    ${email_locator}    ${email_data}

Enter Password
    [Documentation]    This keyword is used to enter the password
    [Arguments]    ${password_locator}    ${password_data}
    Input Text    ${password_locator}    ${password_data}

Click on Sign-in Button
    [Documentation]    This keyword is used to click on sign in button
    [Arguments]    ${signin_locator}
    Click Element    ${signin_locator}
