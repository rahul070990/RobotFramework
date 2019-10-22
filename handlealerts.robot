*** Setting ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://testautomationpractice.blogspot.com/
${Browser}    chrome
    
*** Test Cases ***
MyFirstTestCase
    open browser    ${URL}    ${Browser}
    Maximize Browser Window
    Click Element    xpath://div/button[@onclick='myFunction()']
    Handle Alert    accept
    #Handle Alert    dismiss
    #Handle Alert    LEAVE    
    Close Browser
    

#*** Keywords ***
#UserLogin
    #${"Username"}    Set Variable    id:UserName
    #${"Password"}    Set Variable    id:Password
    #Element Should Be Visible    ${"Username"}
    #Element Should Be Visible    ${"Password"}        
    #Input Text    ${"Username"}    solutioncenter
    #Sleep    2
    #Clear Element Text    ${"Username"}
    #Input Text    ${"Username"}    solutioncenter   
    #Input Text    id:Password    Test1234!
    #Click Element    xpath://a[@id='btnSignIn'] 
    
    #Frames process: select frame>actions required>unselect frame
    #keyword: select frame    id/xpath
    #action
    #unselect 
    
    #switch window & browser to switch window diff window of same browser & diff browsers
    #go to (to go on specific url), go back(back to previous url), get location(gets the current url)
    #capture element screenshot-- capture element screenshot    path/nameof file
    #capture page screenshot-- capture page screenshot    path/nameof file
    #right click action can be done with keyword-- open context menu    locatorpath
    #double click action can be done with key- double click element    locatorpath
    #drag and drop    sourceid    taregtid
    #user defined keywords has 3parts
    #kewyord with no argument- normally create a type of function i nkeyword with step of action & call it in Test ACse section
    #keyword with argument-- Use argument in keyword & in test case
    #keyword with argument & return value
    #resource file- we should make resource file for keywords for reusability of keywords
    #scrolling can be done using javascript: execute javascript    window.scrollTo(0,xxx: 0 is horizontal pixel & second is vertical)
    #if scrolling till an element: scroll element into view    locator
    #scrolling till end: execute javascript    window.scrollTo(0,document.body.scrollHeight)
    #if scrolling to start of page: execute javascript    window.scrollTo(0,-document.body.scrollHeight)
    #for loop:
    #: FOR    ${i}    IN RANGE    1    2    3    
    # for loop for list: @{items}    create list    1    2    3
    
    
    
    
    
    