*** Settings ***
Library                   AppiumLibrary
Resource                  ../pageObject/SearchKeyword.robot
Resource                  Login.robot

*** Variables ***
${id}                     DA935        

*** Test Cases ***
User Search Flight number DA935
    User Tap Sign in
    User input text search             id_flight_number=${id} 
    User Tap button search
    Verify user after Tap button search
           

