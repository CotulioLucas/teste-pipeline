*** Settings ***
Documentation    Keywords referentes aos cenários de Login

Resource    ../../config/packages.robot

*** Keywords ***
Dado que esteja na pagina de login do S2
    Wait Until Element Is Visible    ${LOGIN.CAMPO_USUARIO}
    Wait Until Element Is Visible    ${LOGIN.CAMPO_SENHA}
    Wait Until Element Is Visible    ${LOGIN.BOTAO_ENTRAR}

Quando inserir as credenciais e logar
    Input Text                     ${LOGIN.CAMPO_USUARIO}    ${AUTH.USUARIO}
    Input Text                     ${LOGIN.CAMPO_SENHA}      ${AUTH.SENHA}
    Wait Until Keyword Succeeds    3x                        20s                Click Button    ${LOGIN.BOTAO_ENTRAR}

Quando inserir as credenciais invalidas e logar
    Input Text                     ${LOGIN.CAMPO_USUARIO}    ${AUTH.USUARIO_INVALIDO}
    Input Text                     ${LOGIN.CAMPO_SENHA}      ${AUTH.SENHA_INVALIDA}
    Wait Until Keyword Succeeds    3x                        20s                         Click Button    ${LOGIN.BOTAO_ENTRAR}

Quando inserir usuario valido e senha invalida
    Input Text                     ${LOGIN.CAMPO_USUARIO}    ${AUTH.USUARIO}
    Input Text                     ${LOGIN.CAMPO_SENHA}      ${AUTH.SENHA_INVALIDA}
    Wait Until Keyword Succeeds    3x                        20s                       Click Button    ${LOGIN.BOTAO_ENTRAR}

Quando inserir usuario invalido e senha valida
    Input Text                     ${LOGIN.CAMPO_USUARIO}    ${AUTH.USUARIO_INVALIDO}
    Input Text                     ${LOGIN.CAMPO_SENHA}      ${AUTH.SENHA}
    Wait Until Keyword Succeeds    3x                        20s                         Click Button    ${LOGIN.BOTAO_ENTRAR}

Então devo logar no S2
    Wait Until Element Is Visible    ${LOGIN.TELA_PRINCIPAL}
    Wait Until Element Is Visible    ${LOGIN_MEDICO.ICONE_MENSAGENS_LOAD}
    Page Should Contain              ${MSG.TELA_LOGADA}

Então devo ver a mensagem de erro
    Page Should Contain    ${MSG.ERRO_LOGIN}
