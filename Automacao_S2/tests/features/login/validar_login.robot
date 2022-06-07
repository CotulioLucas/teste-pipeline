*** Settings ***
Documentation    Cenarios para validação da tela de login.

Resource    ../../../src/config/packages.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Case ***
Cenário 01: Validando cenário de login valido
    [Tags]                                      login_01
    Dado que esteja na pagina de login do S2
    Quando inserir as credenciais e logar
    Então devo logar no S2

Cenário 02: Validando cenário de login invalido
    [Tags]                                             login_02
    Dado que esteja na pagina de login do S2
    Quando inserir as credenciais invalidas e logar
    Então devo ver a mensagem de erro

Cenário 03: Validando cenário usuario valido e senha invalida
    [Tags]                                            login_03
    Dado que esteja na pagina de login do S2
    Quando inserir usuario valido e senha invalida
    Então devo ver a mensagem de erro

Cenário 04: Validando cenário usuario invalido e senha valida
    [Tags]                                            login_04
    Dado que esteja na pagina de login do S2
    Quando inserir usuario invalido e senha valida
    Então devo ver a mensagem de erro
