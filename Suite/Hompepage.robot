*** Settings ***
Library                   AppiumLibrary
Resource                  ../pageObject/HomepageKeyword.robot           

*** Test Cases ***
User Should Be Able To See Homepage
    Open Flight Application
    Varify Make Appointment Button login
    Varify image Homepage
   

