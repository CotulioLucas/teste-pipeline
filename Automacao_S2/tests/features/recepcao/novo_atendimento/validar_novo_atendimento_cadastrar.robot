*** Settings ***
Documentation    Como usuário so sistema S2
...              Quero realizar um cadastro de um novo paciente
...              Para armanazenar na base de dados para próximos atendimentos

Resource    ../../../../src/config/packages.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Case ***
Cenário 01 - Novo atendimento - Cadastrar paciente valido
    [Tags]    paciente_valido

    Dado que eu esteja na tela de novo atendimento
    E selecionar a posicao de trabalho e confirmar
    E iniciar atendimento
    Quando informar a senha de atendimento
    E buscar paciente não cadastrado
    E clicar no botao incluir paciente
    E inserir informacoes do novo paciente
    Então devo ir para a tela de procedimento

Cenário 02 - Novo atendimento - Cadastrar paciente invalido
    [Tags]    paciente_invalido

    Dado que eu esteja na tela de novo atendimento
    E selecionar a posicao de trabalho e confirmar
    E iniciar atendimento
    Quando informar a senha de atendimento
    E buscar paciente não cadastrado
    E clicar no botao incluir paciente
    E inserir informacoes invalidas
    Então devo ver as mensagens de erro

Cenário 03 - Novo Atendimento - Cadastrar paciente e não informar campo NOME SOCIAL
    [Tags]    cadastro_nome_paciente_invalido

    Dado que eu esteja na tela de novo atendimento
    E selecionar a posicao de trabalho e confirmar
    E iniciar atendimento
    Quando informar a senha de atendimento
    E buscar paciente não cadastrado
    E clicar no botao incluir paciente
    E inserir informações sem informar NOME SOCIAL
    Então devo ver mensagem de erro do campo NOME SOCIAL e NOME REGISTRO

Cenário 04 - Novo Atendimento - Cadastrar paciente e não informar campo COMO GOSTARIA DE SER CHAMADO
    [Tags]    cadastro_como_ser_chamado_invalido

    Dado que eu esteja na tela de novo atendimento
    E selecionar a posicao de trabalho e confirmar
    E iniciar atendimento
    Quando informar a senha de atendimento
    E buscar paciente não cadastrado
    E clicar no botao incluir paciente
    E inserir informações sem informar COMO GOSTARIA DE SER CHAMADO
    Então devo ver mensagem de erro do campo COMO GOSTARIA DE SER CHAMADO

Cenário 05 - Novo Atendimento - Cadastrar paciente e não informar campo SEXO
    [Tags]    cadastro_campo_sexo_invalido

    Dado que eu esteja na tela de novo atendimento
    E selecionar a posicao de trabalho e confirmar
    E iniciar atendimento
    Quando informar a senha de atendimento
    E buscar paciente não cadastrado
    E clicar no botao incluir paciente
    E inserir informações sem selecionar o campo SEXO
    Então devo ver mensagem de erro do campo SEXO

Cenário 06 - Novo Atendimento - Cadastrar paciente e não informar campo DATA NASCIMENTO
    [Tags]    cadastro_data_nascimento_invalido

    Dado que eu esteja na tela de novo atendimento
    E selecionar a posicao de trabalho e confirmar
    E iniciar atendimento
    Quando informar a senha de atendimento
    E buscar paciente não cadastrado
    E clicar no botao incluir paciente
    E inserir informações sem informar DATA NASCIMENTO
    Então devo ver mensagem de erro do campo DATA NASCIMENTO

Cenário 07 - Novo Atendimento - Cadastrar paciente e não informar campo COMO NOS CONHECEU
    [Tags]    cadastro_como_conheceu_invalido

    Dado que eu esteja na tela de novo atendimento
    E selecionar a posicao de trabalho e confirmar
    E iniciar atendimento
    Quando informar a senha de atendimento
    E buscar paciente não cadastrado
    E clicar no botao incluir paciente
    E inserir informações sem informar COMO NOS CONHECEU
    Então devo ver mensagem de erro do campo COMO NOS CONHECEU

Cenário 08 - Novo Atendimento - Cadastrar paciente e não informar campo TELEFONE ou CELULAR
    [Tags]    cadastro_telefone_invalido

    Dado que eu esteja na tela de novo atendimento
    E selecionar a posicao de trabalho e confirmar
    E iniciar atendimento
    Quando informar a senha de atendimento
    E buscar paciente não cadastrado
    E clicar no botao incluir paciente
    E inserir informações sem informar TELEFONE ou CELULAR
    Então devo ver mensagem de erro do campo TELEFONE ou CELULAR
