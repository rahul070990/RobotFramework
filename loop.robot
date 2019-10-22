*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
#ForLoop
 #   : FOR    ${i}    IN RANGE    1    10
  #  \    Log To Console    ${i}    

#LoopList
 #   @{List}    Create List    john    tom    morris
  #  : FOR    ${i}     IN     @{List}
   # \    Log To Console    ${i}     
    
Loop3
    @{NumberList}    Create List    1    2    3    4    5    6
    :FOR    ${i}    IN     @{NumberList}
    \    Exit For Loop If    ${i}==4
    \    Log To Console    ${i}
    

       
   