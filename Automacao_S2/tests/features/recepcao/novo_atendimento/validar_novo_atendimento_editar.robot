*** Settings ***
Documentation    Como usuário so sistema S2
...              Quero realizar um cadastro de um novo paciente
...              Para armanazenar na base de dados para próximos atendimentos

Resource    ../../../../src/config/packages.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Case ***
Cenário 01 - Novo atendimento - Editar paciente sem NOME SOCIAL
    [Tags]    editar_paciente_nome_social_invalido
    # # Set Selenium Speed              0.1 seconds             0,1 seconds   0.1 seconds

    Dado que eu esteja na tela de novo atendimento
    E selecionar a posicao de trabalho e confirmar
    E iniciar atendimento
    Quando informar a senha de atendimento
    E buscar o paciente ja cadastrado
    E clicar no botao editar paciente
    E alterar paciente sem informar campo NOME SOCIAL
    Então devo ver mensagem de erro apos editar sem NOME SOCIAL

Cenário 02 - Novo atendimento - Editar paciente sem NOME REGISTRO
    [Tags]    editar_paciente_nome_registro_invalido
    # # Set Selenium Speed              0.1 seconds             0,1 seconds   0.1 seconds

    Dado que eu esteja na tela de novo atendimento
    E selecionar a posicao de trabalho e confirmar
    E iniciar atendimento
    Quando informar a senha de atendimento
    E buscar o paciente ja cadastrado
    E clicar no botao editar paciente
    E alterar paciente sem informar campo NOME REGISTRO
    Então devo ver mensagem de erro apos editar sem NOME REGISTRO

Cenário 03 - Novo atendimento - Editar paciente sem COMO SER CHAMADO
    [Tags]    editar_paciente_como_ser_chamado_invalido
    # # Set Selenium Speed              0.1 seconds             0,1 seconds   0.1 seconds

    Dado que eu esteja na tela de novo atendimento
    E selecionar a posicao de trabalho e confirmar
    E iniciar atendimento
    Quando informar a senha de atendimento
    E buscar o paciente ja cadastrado
    E clicar no botao editar paciente
    E alterar paciente sem informar campo COMO SER CHAMADO
    Então devo ver mensagem de erro apos editar sem COMO SER CHAMADO

Cenário 04 - Novo atendimento - Editar paciente sem DATA NASCIMENTO invalido
    [Tags]    editar_data_nascimento_invalido
    # # Set Selenium Speed              0.1 seconds             0,1 seconds   0.1 seconds

    Dado que eu esteja na tela de novo atendimento
    E selecionar a posicao de trabalho e confirmar
    E iniciar atendimento
    Quando informar a senha de atendimento
    E buscar o paciente ja cadastrado
    E clicar no botao editar paciente
    E alterar paciente sem informar campo DATA NASCIMENTO
    Então devo ver mensagem de erro apos editar sem DATA NASCIMENTO

Cenário 05 - Novo atendimento - Editar paciente sem COMO NOS CONHECEU
    [Tags]    editar_como_nos_conheceu_invalido
    # # Set Selenium Speed              0.1 seconds             0,1 seconds   0.1 seconds

    Dado que eu esteja na tela de novo atendimento
    E selecionar a posicao de trabalho e confirmar
    E iniciar atendimento
    Quando informar a senha de atendimento
    E buscar o paciente ja cadastrado
    E clicar no botao editar paciente
    E alterar paciente sem informar campo COMO NOS CONHECEU
    Então devo ver mensagem de erro apos editar sem COMO NOS CONHECEU

Cenário 06 - Novo atendimento - Editar paciente sem TELEFONE CELULAR
    [Tags]    editar_sem_celular_informado
    # # Set Selenium Speed              0.1 seconds             0,1 seconds   0.1 seconds

    Dado que eu esteja na tela de novo atendimento
    E selecionar a posicao de trabalho e confirmar
    E iniciar atendimento
    Quando informar a senha de atendimento
    E buscar o paciente ja cadastrado
    E clicar no botao editar paciente
    E alterar paciente sem informar campo TELEFONE CELULAR e TELEFONE FIXO
    Então devo ver mensagem de erro apos editar sem TELEFONE CELULAR e TELEFONE FIXO

Cenário 07 - Novo atendimento - Editar paciente TELEFONE CELULAR invalido
    [Tags]    editar_celular_invalido
    # # Set Selenium Speed              0.1 seconds             0,1 seconds   0.1 seconds

    Dado que eu esteja na tela de novo atendimento
    E selecionar a posicao de trabalho e confirmar
    E iniciar atendimento
    Quando informar a senha de atendimento
    E buscar o paciente ja cadastrado
    E clicar no botao editar paciente
    E alterar paciente informando campo TELEFONE CELULAR invalido
    Então devo ver mensagem de erro apos editar sem TELEFONE CELULAR e TELEFONE FIXO
