*** Settings ***
Library    Dialogs
Resource    ${EXECDIR}\\Pages\\Keywords\\tatacliq_loginpage_keywords.robot
Resource    ${EXECDIR}\\Pages\\Locators\\tatacliq_loginpage_locators.robot
Resource    ${EXECDIR}\\Util\\Common_actions_Keywords\\Common_actions.robot
Resource    ${EXECDIR}\\Util\\Common_Actions_Testdata\\Common_TestData.robot
Resource    ${EXECDIR}\\TestData\\tatacliq_loginpage_data.robot
Resource    ${EXECDIR}\\Validations\\Keywords\\Login_Page_Validations_Keywords.robot
Resource    ${EXECDIR}\\Validations\\Locators\\Login_Page_Validations_Locators.robot

*** Test Cases ***
Login to TataCliq
    [Documentation]     This keyword is used to login to tatacliq and verify whether login happenend or not
    Set Selenium Speed   0.05s
    Open Browser and Website    &{COMMON_DATA}[url]    &{COMMON_DATA}[browser]
    Pause Execution
    Click on Sign-in/Signup Button    &{TLP_LOCATOR}[signin_signup_locator]
    Enter Email    &{TLP_LOCATOR}[email_field_locator]    &{TLP_DATA}[email]
    Enter Password    &{TLP_LOCATOR}[password_field_locator]    &{TLP_DATA}[password]
    Click on Sign-in Button    &{TLP_LOCATOR}[signin_button_locator]
    Verify Login    ${login_validation_locator}
    Close Browser