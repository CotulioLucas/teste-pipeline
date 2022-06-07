*** Settings ***
Documentation    Como usuário so sistema S2
...              Quero realizar uma pesquisa de uma paciente pelo nome , cpf e carteira de convênio
...              Para verificar se o campo de pesquisa está funcional para os proximos testes

Resource    ../../../../src/config/packages.robot

Test Setup       Open Session
Test Teardown    Close Session
*** Test Case ***
Cenário 01 - Agendamento - Consulta paciente nome
    [Tags]    agendamento_consultar_nome
    # # Set Selenium Speed              0.1 seconds             0,1 seconds   0.1 seconds

    Dado que eu esteja na tela de agendamento
    E buscar o paciente para agendamento pelo nome
    Então deve ser apresentado o resultado com sucesso

Cenário 02 - Agendamento - Consulta paciente cpf
    [Tags]    agendamento_consultar_cpf
    # # Set Selenium Speed              0.1 seconds             0,1 seconds   0.1 seconds

    Dado que eu esteja na tela de agendamento
    E buscar o paciente para agendamento pelo cpf
    Então deve ser apresentado o resultado com sucesso

Cenário 03 - Agendamento - Consulta paciente carteira convenio
    [Tags]    agendamento_consultar_convenio
    # # Set Selenium Speed              0.1 seconds             0,1 seconds   0.1 seconds

    Dado que eu esteja na tela de agendamento
    E buscar o paciente para agendamento pelo numero da carteira convenio
    Então deve ser apresentado o nome do conveniado com sucesso

Cenário 04 - Agendamento - Consulta paciente pelo numero do celular
    [Tags]    agendamento_consultar_celular
    # # Set Selenium Speed              0.1 seconds             0,1 seconds   0.1 seconds

    Dado que eu esteja na tela de agendamento
    E buscar o paciente para agendamento pelo numero do celular
    Então deve ser apresentado o resultado com sucesso

Cenário 05 - Agendamento - Consulta paciente pelo numero do rg
    [Tags]    agendamento_consultar_rg
    # # Set Selenium Speed              0.1 seconds             0,1 seconds   0.1 seconds

    Dado que eu esteja na tela de agendamento
    E buscar o paciente para agendamento pelo numero do rg
    Então deve ser apresentado o resultado com sucesso
