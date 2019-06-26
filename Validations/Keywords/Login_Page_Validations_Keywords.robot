*** Keywords ***
Verify Login
    [Documentation]    This keyword is used to verify whether login is done or not
    [Arguments]    ${login_validation}
    Wait Until Element Is Visible    ${login_validation}
    Element Should Contain    ${login_validation}    Hello
    Log To Console    Login is successful