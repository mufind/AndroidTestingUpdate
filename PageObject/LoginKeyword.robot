*** Settings ***
Library                   AppiumLibrary
Variables                 ../Resource/dataLocator.yaml   

*** Variables ***
${REMOTE_URL}             http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}          Android
${PLATFORM_VERSION}       8.1
${DEVICE_NAME}            emulator-5554
${ACTIVITY_NAME}          com.example.myapplication.MainActivity
${PACKAGE_NAME}           com.example.myapplication

*** Keywords ***
Open Flight Application
  Open Application        ${REMOTE_URL}
  ...                     platformName=${PLATFORM_NAME}
  ...                     platformVersion=${PLATFORM_VERSION}
  ...                     deviceName=${DEVICE_NAME}
  ...                     automationName=UiAutomator2
  ...                     newCommandTimeout=2500
  ...                     appActivity=${Activity_NAME}
  ...                     appPackage=${PACKAGE_NAME}
  ...                     app=/Users/msi gaming/personal/flightApp.apk

Open Flight Application
    Open Flight Application
    
User Tap Sign in
    Tap                   ${button_signin}

User Input text username
    [Arguments]           ${input_username}
    Input text            ${username}

User Input text password
    [Arguments]           ${input_password}
    Input text            ${password}

User Tap Button Sign in 
    Tap                   ${button_login}

Verify acc user after tap button sign in
    Element Should Be Visible       ${verifikasi_login}  