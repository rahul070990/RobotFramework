*** Settings ***
Library    SeleniumLibrary   


*** Test Cases ***
LinkText
    Open Browser    http://newtours.demoaut.com/    chrome
    Maximize Browser Window
    ${LinksCount}=    Get Element Count    xpath://a
    Log To Console    ${LinksCount} 
    @{ListValues}    Create List
    Sleep    3        
    : FOR    ${i}    IN RANGE    1    ${LinksCount}
    \    ${FinalList}=    Get Text    xpath:(//a)[${i}] 
    \    Log To Console    ${FinalList}       
    Close Browser