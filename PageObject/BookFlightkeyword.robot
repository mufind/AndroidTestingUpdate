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

User tap book flightApp
    Tap                   ${book}

User choose list from city
    Tap                   ${list_from_city}

User choose list to city
    Tap                   ${list_to_city}

User choose list class
    Tap                   ${list_class}

User choose start date
    Tap                   ${start_date}

User tap button ok start
    Tap                   ${button_ok_start}

User choose end date
    Tap                   ${end_date}

User tap button ok end
    Tap                   ${button_ok_end}

User tap button flightApp
    Tap                   ${flight}

User tap button book flightApp
    Tap                   ${button_book}

User tap price
    Tap                   ${price}

User tap button confirm order
    Tap                   ${button_confirm_order}

Verify from city
     Element Should Be Visible      ${verifikasi_book1} 

Verify airplane
     Element Should Be Visible      ${verifikasi_book2}

Verify to city
     Element Should Be Visible      ${verifikasi_book3} 

Varify book order
     Element Should Be Visible      ${verifikasi_book4} 









