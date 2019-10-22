*** Settings ***
Library    SeleniumLibrary   
 

*** Test Cases ***                        
TestData
    Open Browser    https://www.google.com    chrome     
    Close Browser  
        Close Browser 
            Close Browser 
                Close Browser 
  
    
