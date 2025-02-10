*** Settings ***
Documentation    share link and check button
Resource    stories.resource
Suite Setup    common.Suite Setup
Suite Teardown    common.Suite Teardown
Test Setup    common.Lauch App With Geo
Test Teardown    common.Close App


*** Test Cases ***
Introduction Tap With Position
    [Documentation]    switch slides in stories by tapping left and right
    Wait Until Element Is Visible    ${STORY_IMAGE}
    Click Element    ${STORY_IMAGE}

    Wait Until Element Is Visible    ${FRAG_STORIES}

    Switch Slide By Tap    "right"
    Switch Slide By Tap    "left"

Cheking Stories Collection Button and Sharing Photo
    [Documentation]    share link and check button
    View Photo Stories To The End
    Swiping The Photo Stories In The Other Direction
    Sharing The Photo
