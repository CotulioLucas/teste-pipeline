*** Settings ***
Documentation    Como atendente que utiliza o sistesma do S2
...              Quero realizar uma recepção e uma pre consulta
...              Para validar o comportamento da tela e que as ações
...              estão funcionando corretamente.

Resource    ../../../src/config/packages.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Case ***
Cenário 01: Realizar pré consulta com sucesso

    Dado que esteja em novo atendimento
    E realizar uma recepcao
    Quando realizar a pré-consulta do paciente
    Então devo ver a mensagem de atendimento finalizado
