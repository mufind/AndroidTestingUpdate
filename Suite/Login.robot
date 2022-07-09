*** Settings ***
Library                   AppiumLibrary
Resource                  ../pageObject/LoginKeyword.robot           

*** Variables ***
${email}                  support@ngendigital.com
${authentication}         abc123 

*** Test Cases ***
User login username and password valid data
    Open Flight Application
    User Tap Sign in
    User Input text username            input_username=${email}
    User Input text password            input_password=${authentication}
    User Tap Button Sign in
    Verify acc user after tap button sign in



