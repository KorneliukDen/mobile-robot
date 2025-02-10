*** Settings ***
Documentation    aplication data
Library    AppiumLibrary
Resource    ../Locators/afisha_app_loc.resource


*** Keywords ***
Open App
    [Documentation]    openinig app
    Open Application
    ...    remote_url=${REMOTE_URL}
    ...    automationName=${AUTOMATION_NAME}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    udid=${UDID}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
