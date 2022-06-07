*** Settings ***
Documentation    Arquivo de Setup And Teardown

Resource    packages.robot

*** Keywords ***
Open Session
    Open Browser    ${CONFIG.BROWSER.URL_SITE}                         ${CONFIG.BROWSER.NAME}
    ...             options=add_argument("--disable-dev-shm-usage");add_experimental_option("excludeSwitches", ["enable-logging"])

    Set Window Size         ${CONFIG.BROWSER.LARGURA_TELA}      ${CONFIG.BROWSER.ALTURA_TELA}
    Set Selenium Speed      0.2 seconds
    Set Selenium Timeout    ${CONFIG.BROWSER.IMPLICITY_WAIT}

    ${time} =	Get Time
    Log To Console        ${time}

Close Session
    Capture Page Screenshot
    Close Browser
