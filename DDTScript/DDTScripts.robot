*** Settings ***
Library    SeleniumLibrary   
Resource    ../Resources/resources.robot
#sLibrary    DataDriver   ../DataFiles/UsersData.csv
Test Template    PostiveLogin  

*** Test Cases ***                #username        #password
#Correct user empty password       agencyadmin    ${EMPTY}
#Correct user wrong password       agencyadmnin    Test1234
#Blank user wrong password        ${EMPTY}        Test1234
#Wrong user correct password       agencyad        Test1234!
TestData using    {username}    {password} 
     

*** Keywords ***
PostiveLogin
    LaunchBrowser
    [Arguments]    ${username}    ${password}
    EnterUsername    ${username}
    EnterPassword    ${password}
    ClickLogin
    UnSuccessfulLogin
    Sleep    3    
    