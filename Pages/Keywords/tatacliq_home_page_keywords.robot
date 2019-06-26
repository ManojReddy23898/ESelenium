*** Settings ***
Resource    ${EXECDIR}\\Pages\\Locators\\tatacliq_home_page_locators.robot

*** Keywords ***
Home Page Should Be Loaded
    [Documentation]    This keyword is used to verify whether home page is loaded or not
    Wait Until Element Is Visible    &{THP_LOCATOR}[login_validation]
    Element Should Contain    &{THP_LOCATOR}[login_validation]    Hello  