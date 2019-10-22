*** Setting ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://portal-qa3web.examone.com/
${Browser}    chrome
    
*** Test Cases ***
MyFirstTestCase
    open browser    ${URL}    ${Browser}
    Maximize Browser Window
    UserLogin
    Close Browser
    

*** Keywords ***
UserLogin
    ${"Username"}    Set Variable    id:UserName
    ${"Password"}    Set Variable    id:Password
    Element Should Be Visible    ${"Username"}
    Element Should Be Visible    ${"Password"}        
    Input Text    ${"Username"}    solutioncenter
    Sleep    2
    Clear Element Text    ${"Username"}
    Input Text    ${"Username"}    solutioncenter   
    Input Text    id:Password    Test1234!
    Click Element    xpath://a[@id='btnSignIn'] 
    
    #Select From List By Index    locator    
    #keywords for radio buttons & checkboxes
    #Select Checkbox    locator 
    #Select Radio Button    group_name    value
    #Select from list for multi select     '
    #selenium speed- all statement
    #selenium timeout- specific statement
    #implicit wait for all element then 
    #sleep -individually for every checks-if element found  then move ahead
    #close browser- This will close single & Close all will close all browser
    
    
    
    