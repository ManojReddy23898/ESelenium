*** Settings ***
Library    Dialogs
Resource    ${EXECDIR}\\Pages\\Keywords\\tatacliq_login_page_keywords.robot
Resource    ${EXECDIR}\\Util\\common_actions.robot
Resource    ${EXECDIR}\\TestData\\test_data.robot
Resource    ${EXECDIR}\\TestData\\tatacliq_data.robot
Resource    ${EXECDIR}\\Pages\\Keywords\\tatacliq_home_page_keywords.robot

*** Test Cases ***
Login To TataCliq
    [Documentation]     This keyword is used to login to tatacliq and verify whether login happenend or not
    [Setup]    Launch Tatacliq Website
    Click On Sign-in/Signup Button    
    Enter Email    &{TLP_DATA}[email]
    Enter Password    &{TLP_DATA}[password]
    Click On Sign-in Button    
    Home Page Should Be Loaded    
    [Teardown]    Close Browsers

*** Keywords ***
Launch Tatacliq Website
    Set Selenium Speed   0.05s
    Open Browser and Website    &{COMMON_DATA}[url]    &{COMMON_DATA}[browser]
    Pause Execution