*** Settings ***
Library    SeleniumLibrary
Test Setup    เปิด gc
#Test Teardown    Close All Browsers


*** Test Cases ***
test google
    ใส่ email
    ใส่ pass
    ใส่สถานะ
*** Keywords ***
เปิด gc
    # Open Browser    https://www.facebook.com/    Chrome
    ${options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys
    Call Method  ${options}  add_argument  --disable-notifications\=true
    Create webdriver  Chrome  chrome_options=${options}
    Go To    https://www.facebook.com/
    Maximize Browser Window

ใส่ email
    Input Text     id:email    mmxx15566@hotmail.com

ใส่ pass
    # [Arguments]    ${id}
    Input Text     id:pass    084${SPACE}0214641
    Click Button    u_0_2
ใส่สถานะ
    Input Text     placeholder-a93fu    084${SPACE}0214641
    Wait Until Element Is Visible    placeholder-3un07    5s

# ค้นหาด้วยbnk
#     [Arguments]    ${text}
#     Element Should Be Visible    res
#     Element Should Contain    res    ${text}
#     Wait Until Element Is Visible    res    1s