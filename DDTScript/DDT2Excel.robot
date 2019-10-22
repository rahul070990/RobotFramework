*** Settings ***
Library    SeleniumLibrary   
Resource    ../Resources/resources.robot
#Library    DataDriver   ../DataFiles/TestDataNew.xlsx    sheet_name=Sheet1
Test Template    PostiveLogin
#Library    DataDriver.DataDriver    ../DataFiles/TestDataNew.xlsx    sheet_name=Sheet1    

*** Test Cases ***                        
#Correct user empty password       agencyadmin    ${EMPTY}
#Correct user wrong password       agencyadmnin    Test1234
#Blank user wrong password        ${EMPTY}        Test1234
#Wrong user correct password       agencyad        Test1234!
TestData using    {username}    {password}     
   
    
    

*** Keywords ***
PostiveLogin
    [Arguments]    ${username}    ${password}
    EnterUsername    ${username}
    EnterPassword    ${password}
    ClickLogin
    UnSuccessfulLogin
    Sleep    3    
    