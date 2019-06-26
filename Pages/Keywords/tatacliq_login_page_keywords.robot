*** Settings ***
Library    SeleniumLibrary
Resource    ${EXECDIR}\\Pages\\Locators\\tatacliq_login_page_locators.robot

*** Keywords ***
Click On Sign-in/Signup Button
    [Documentation]    This keyword is used to click on sign in/sign up button
    Click Element    &{TLP_LOCATOR}[signin_signup]

Enter Email
    [Documentation]    This keyword is used to enter the email
    [Arguments]    ${email_data}
    Input Text    &{TLP_LOCATOR}[email_field]    ${email_data}

Enter Password
    [Documentation]    This keyword is used to enter the password
    [Arguments]    ${password_data}
    Input Text    &{TLP_LOCATOR}[password_field]    ${password_data}

Click On Sign-in Button
    [Documentation]    This keyword is used to click on sign in button
    Click Element    &{TLP_LOCATOR}[signin_button]