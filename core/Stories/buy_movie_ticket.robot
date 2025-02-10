*** Comments ***
Пробовал дойти до кнопки оплатить, но не нашел возможность
100% тапнуть на пустое место, а кнопки автоматически назначить место в приложенн нету.
Если ты или другие ученики написали скрипт для этого я бы очень хотел на него посмотреть


*** Settings ***
Documentation    Search for a movie and select a seat
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

Looking For A Movie
    [Documentation]    looking for a movie in stories
    Looking For A Movie
    Seat Place Map View
