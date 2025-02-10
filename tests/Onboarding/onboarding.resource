*** Settings ***
Documentation    keywords for onboarding
Resource    ../common.resource


*** Keywords ***
Allow Location And Confirm Town
    [Documentation]    Onboarding with geolocation permission and confirmation of the selected city
    Allow Location
    Confirm Town
    Foreground

Allow Location
    [Documentation]    allow geolocation
    Wait Until Element Is Visible    ${ONBOARDING_SUBMIT_BTN}
    Click Element    ${ONBOARDING_SUBMIT_BTN}
    IF    ${PLATFORM_VERSION} > 9
        Wait Until Page Contains Element    ${PREMISSION_FOREGROUND}
        Click Element    ${PREMISSION_FOREGROUND}
    ELSE
        Wait Until Page Contains Element    ${PREMISSION_ALLOW_OLD}
        Click Element    ${PREMISSION_ALLOW_OLD}
    END

Confirm Town
    [Documentation]    Confirming town
    Wait Until Page Contains Element    ${ONBOARDING_CONFIRM_CITY_BTN}
    Click Element    ${ONBOARDING_CONFIRM_CITY_BTN}

Change Town
    [Documentation]    Changing town
    Wait Until Page Contains Element    ${ONBOARDING_CHANGE_CITY_BTN}
    Click Element    ${ONBOARDING_CHANGE_CITY_BTN}
    Wait Until Page Contains Element    ${SELECT_NEW_CITY}
    Click Element    ${SELECT_NEW_CITY}

Deny Location
    [Documentation]    deny location
    Wait Until Element Is Visible    ${ONBOARDING_SUBMIT_BTN}
    Click Element    ${ONBOARDING_SUBMIT_BTN}
    Wait Until Page Contains Element    ${DENY_LOCATION_BTN}
    Click Element    ${DENY_LOCATION_BTN}

Foreground
    [Documentation]    confirmation of loaded main page
    IF    ${PLATFORM_VERSION} > 9
        Wait Until Page Contains Element    ${VERTICAL_FEATURED_IMAGE}
    ELSE
        Wait Until Page Contains Element    ${OLD_ANDROID_FOREGROUND}
    END
