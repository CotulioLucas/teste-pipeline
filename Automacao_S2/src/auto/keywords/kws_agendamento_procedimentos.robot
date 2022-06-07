*** Settings ***
Documentation    Keywords referentes aos cenários de Login

Resource    ../../config/packages.robot

*** Keywords ***

E valido o resultado da busca
    Então deve ser apresentado o resultado com sucesso

Quando seleciona o paciente
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_RESULTADO_PACIENTE_NOME}
    Wait Until Keyword Succeeds      3x                                                              20s    Click Element    ${BUSCAR_PACIENTE_AGENDAMENTO.BOTAO_SELECIONAR}
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_CEP}
