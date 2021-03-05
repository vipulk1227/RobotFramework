*** Settings ***
Library    SeleniumLibrary  

Suite Setup    Log    i am inside suite setup    
Suite Teardown    Log    i am inside suite Teardown
 
Test Setup    Log    i am inside test setup    
Test Teardown    Log    i am inside test teardown          

*** Test Cases ***
   
MyFirstTestCase
    [Tags]    smoke
    Log    Hello world  
MySecondTestCase
    Log    Hello world  
    Set Tags    regression1
MyThirdTestCase
    Log    Hello world  
    Set Tags    regression2
# FirstSeleniumTestCase
    # Open Browser    https://www.google.com/    chrome
    # Set Browser Implicit Wait    5
    # Input Text    name=q        automation testing 
    # Press Keys    name=q    ENTER
    # # Click Button    name=btnK    
    # Sleep    5         
    # Close Browser
    # Log    Test Complited  
    
# LoginIntoFacebook
    # Open Browser   ${url}     chrome
    # LoginStep
    # Close Browser  
    
*** Variables ***
${url}    https://www.facebook.com/  
@{username}    vipul    vipul@123
&{credentials}    password=admin123

*** Keywords ***
LoginStep
    Input Text    id=email        @{username}[0]
    Input Password    id=pass      password
    Click Button    name=login  