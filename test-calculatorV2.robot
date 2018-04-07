*** Settings ***
Library    SeleniumLibrary
Suite Setup    เปิด gc
Suite Teardown    Close All Browsers
Test Template    ทดสอบการคำนวณ

*** Test Cases ***
ทดสอบเครื่องคิดเลข
    # [Template]    ทดสอบการคำนวณ
    3    +    1    4
    6    −    4    2

*** Keywords ***
ทดสอบการคำนวณ
    [Arguments]    ${value1}    ${oparator}    ${value2}    ${result}
    กด    ${value1}
    กด    ${oparator}
    กด    ${value2}
    จะต้องได้ผลลัพธ์    ${result}

เปิด gc
    Open Browser    http://www.a-calculator.com/basic/    Chrome
กด
    [Arguments]    ${id}
    Click Button    ${id}
จะต้องได้ผลลัพธ์
    [Arguments]    ${id}
    กด    =
    Wait Until Element Contains    display    ${id}