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

User Tap Search
    Tap                   ${search}

User input text search
    [Arguments]           ${id_flight_number}
    Input text            ${input_text_search}

User Tap button search
    Tap                   ${button_search}

Verify user after Tap button search
    Element Should Be Visible       ${verifikasi_search}



