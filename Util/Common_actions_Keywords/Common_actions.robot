*** Keywords ***
Open Browser and Website
    [Documentation]    This keyword is used to open the required website in required browser
    [Arguments]    ${url_data}    ${browsername_data}
    Open Browser    ${url_data}    ${browsername_data}
    Maximize Browser Window

Close Browser
    [Documentation]    This keyword is used to close the bowser
    Close Window