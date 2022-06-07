*** Settings ***
Documentation   Como um médico parceiro do DrConsulta
...              Quero realizar um atendimento pela recepção > novo atendimento
...              E realizar a pré consulta do paciente
...              Para realizar o atendimento pelo prontuário como médico logado no sistema
...              E validar que o atendimento médico está funcionando corretamente.

Resource    ../../../src/config/packages.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Case ***
Cenário: Realizar recepção e finalizar com atendimento médico

    Dado que esteja em novo atendimento
    E realizar uma recepcao
    E realizar a pré-consulta
    E realizar o login como médico
    Quando iniciar atendimento buscando paciente pela senha
    E realizar o atendimento pela ação prontuário
    Então devo finalizar o atendimento
    E validar o status do paciente como finalizado
