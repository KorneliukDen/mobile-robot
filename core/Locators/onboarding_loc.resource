*** Settings ***
Documentation    onboarding locators


*** Variables ***
${ONBOARDING_SUBMIT_BTN}    ru.afisha.android:id/fragOnboardinSubmitBtn
${ONBOARDING_CONFIRM_CITY_BTN}    android:id/button1
${ONBOARDING_CHANGE_CITY_BTN}    android:id/button2
${SELECT_NEW_CITY}    xpath=//android.widget.TextView[@resource-id="ru.afisha.android:id/itemCitySelectionName" and @text="Абакан"]    # robocop: off=0508
${DENY_LOCATION_BTN}    com.android.permissioncontroller:id/permission_deny_button
