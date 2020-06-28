*** Settings ***

Library    SeleniumLibrary    
Suite Setup     log to console         I am insde test suite case case number 2
Suite Teardown       drop_browser


*** Variables ***
${URL}      https:google.com  
${navegador}    chrome    




      
*** Test Cases ***
myfirsttest
    Log         hello
    
FirstSeleniumTest
    Set Selenium Implicit Wait    2
    Open Browser       ${URL}        ${navegador}         
    searchGoogle 
    log to console         hello
    ${url}        Set Variable    https:google.com
    log             ${url}        


*** Keywords ***

searchGoogle
    Input Text          name=q        uol
    Press Keys          name=q     ENTER 
    sleep     2   

drop_browser
    Close Browser
    


    