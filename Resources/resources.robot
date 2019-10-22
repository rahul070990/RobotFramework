*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${AppURL}    https://portal-qa3web.examone.com
${Browser}    chrome

*** Keywords ***
LaunchBrowser
    Open Browser    ${AppURL}    ${Browser}
    Maximize Browser Window
    
EnterUsername
    [Arguments]    ${username}
    Input Text    id:UserName    ${username}
    
EnterPassword
    [Arguments]    ${password}
    Input Text    id:Password    ${password}
    
ClickLogin
    Click Element    xpath://a[@id='btnSignIn']
    
UnSuccessfulLogin
    Page Should Contain    Username and Password are required    
    
SuccessfulLogin
    Page Should Contain    My Dashboard    
    
ClickLogout
    Click Link    Sign Out    
        
CloseBrowsers
    Close All Browsers
                   