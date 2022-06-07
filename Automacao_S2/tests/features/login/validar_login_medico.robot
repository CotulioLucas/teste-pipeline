*** Settings ***
Documentation    Como médico que utiliza o sistesma do S2
...              Quero realizar os login no sistema
...              Para realizar o atendimento aos pacientes.
...              * Testes realizados:
...              1 - Validação Login: Cenário de sucesso.
...              1.1 - credencias do médico validas
...              2 - Validação Login: Cenários sem sucesso
...              2.1 - credenciais invalidas,
...              2.2 - usuario valido e senha invalida,
...              2.3 - usuario invalido e senha valida

Resource    ../../../src/config/packages.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Case ***
Cenário 01: Validando cenário de login valido

    [Tags]                                             login_medico_01
    Dado que esteja na pagina de login do S2
    Quando inserir as credenciais do medico e logar
    Então devo logar no S2 como médico

Cenário 02: Validando cenário de login medico invalido

    [Tags]                                                     login_medico_02
    Dado que esteja na pagina de login do S2
    Quando inserir as credenciais medicas invalidas e logar
    Então devo ver a mensagem de erro

Cenário 03: Validando cenário usuario medico valido e senha invalida

    [Tags]                                                   login_medico_03
    Dado que esteja na pagina de login do S2
    Quando inserir usuario medico valido e senha invalida
    Então devo ver a mensagem de erro

Cenário 04: Validando cenário usuario invalido e senha valida

    [Tags]                                                   login_medico_04
    Dado que esteja na pagina de login do S2
    Quando inserir usuario medico invalido e senha valida
    Então devo ver a mensagem de erro
