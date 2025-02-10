*** Settings ***
Documentation    Onboarding with geolocation permission and changing city
Resource    onboarding.resource
Suite Setup    common.Suite Setup
Suite Teardown    common.Suite Teardown
Test Setup    common.Launch App
Test Teardown    common.Close App


*** Test Cases ***
Allow Location And Change Town
    [Documentation]    Onboarding with geolocation permission and changing city
    onboarding.Allow Location
    onboarding.Change Town
