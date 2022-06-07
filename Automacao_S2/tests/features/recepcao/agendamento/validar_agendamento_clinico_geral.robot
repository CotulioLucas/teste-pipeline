*** Settings ***
Documentation    Como usuário so sistema S2
...              Quero realizar um agendamento com clinico geral
...              Para verificar se a consulta com clinico e marcada com sucesso

Resource    ../../../../src/config/packages.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Case ***
Cenário 01 - Agendamento - Consulta Clinico Geral mesmo centro médico
    [Tags]                                                agendamento_clinico_geral_mesmo_centro_medico
    # # Set Selenium Speed              0.1 seconds             0,1 seconds                                   0.1 seconds
    Dado que eu esteja na tela de agendamento
    E buscar o paciente para agendamento pelo nome
    E valido o resultado da busca
    Quando seleciona o paciente
    E selecionar o produto e a unidade
    E seleciono a data de agendamento no calendario
    E realizar agendamento
    Então valido a mensagem do agendamento com sucesso

Cenário 02 - Cancelar Agendamento - Consulta Clinico Geral mesmo centro médico
    [Tags]                                              cancelar_agendamento_mesmo_centro_medico
    # # Set Selenium Speed              0.1 seconds             0,1 seconds                                 0.1 seconds
    Dado que eu esteja na tela de agendamento
    E buscar o paciente para agendamento pelo nome
    E valido o resultado da busca
    Quando seleciona o paciente
    E excluir um agendamento
    Então valido a mensagem do agendamento cancelado

Cenário 03 - Agendamento - Consulta Clinico Geral centro médico diferente
    [Tags]                                                agendamento_clinico_geral_centro_medico_diferente
    # # Set Selenium Speed              0.1 seconds             0,1 seconds                                   0.1 seconds
    Dado que eu esteja na tela de agendamento
    E buscar o paciente para agendamento pelo nome
    E valido o resultado da busca
    Quando seleciona o paciente
    E selecionar o produto com a unidade diferente
    E seleciono a data de agendamento no calendario
    E realizar agendamento
    Então valido a mensagem do agendamento com sucesso

Cenário 04 - Cancelar Agendamento - Consulta Clinico Geral outro centro médico
    [Tags]                                              cancelar_agendamento_outro_centro_medico
    # # Set Selenium Speed              0.1 seconds             0,1 seconds                                 0.1 seconds
    Dado que eu esteja na tela de agendamento
    E buscar o paciente para agendamento pelo nome
    E valido o resultado da busca
    Quando seleciona o paciente
    E excluir um agendamento
    Então valido a mensagem do agendamento cancelado
