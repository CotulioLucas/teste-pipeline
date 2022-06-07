*** Settings ***
Documentation    Keywords referentes aos cenários de Login

Resource    ../../config/packages.robot

*** Keywords ***
E buscar o paciente para agendamento pelo nome
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.LBL_INFORME_PACIENTE}
    Click Element                    ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_BUSCAR_PACIENTE}
    Input Text                       ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_BUSCAR_PACIENTE}    ${DADOS_PACIENTE.NOME_PACIENTE}
    Wait Until Keyword Succeeds      3x                                                      20s                                Click Button    ${BUSCAR_PACIENTE_AGENDAMENTO.BTN_PESQUISA_PACIENTE}

E buscar o paciente para agendamento pelo cpf
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.LBL_INFORME_PACIENTE}
    Wait Until Keyword Succeeds      3x                                                      20s                               Click Element    ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_BUSCAR_PACIENTE}
    Input Text                       ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_BUSCAR_PACIENTE}    ${DADOS_PACIENTE.CPF_PACIENTE}
    Wait Until Keyword Succeeds      3x                                                      20s                               Click Button     ${BUSCAR_PACIENTE_AGENDAMENTO.BTN_PESQUISA_PACIENTE}

E buscar o paciente para agendamento pelo numero da carteira convenio
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.LBL_INFORME_PACIENTE}
    Wait Until Keyword Succeeds      3x                                                      20s                                             Click Element    ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_BUSCAR_PACIENTE}
    Input Text                       ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_BUSCAR_PACIENTE}    ${DADOS_PACIENTE_CONVENIO.CARTEIRA_CONVENIO}
    Wait Until Keyword Succeeds      3x                                                      20s                                             Click Button     ${BUSCAR_PACIENTE_AGENDAMENTO.BTN_PESQUISA_PACIENTE}

E buscar o paciente para agendamento pelo numero do celular
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.LBL_INFORME_PACIENTE}
    Wait Until Keyword Succeeds      3x                                                      20s                                 Click Element    ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_BUSCAR_PACIENTE}
    Input Text                       ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_BUSCAR_PACIENTE}    ${DADOS_PACIENTE.NUMERO_CELULAR}
    Wait Until Keyword Succeeds      3x                                                      20s                                 Click Button     ${BUSCAR_PACIENTE_AGENDAMENTO.BTN_PESQUISA_PACIENTE}

E buscar o paciente para agendamento pelo numero do rg
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.LBL_INFORME_PACIENTE}
    Wait Until Keyword Succeeds      3x                                                      20s                            Click Element    ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_BUSCAR_PACIENTE}
    Input Text                       ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_BUSCAR_PACIENTE}    ${DADOS_PACIENTE.NUMERO_RG}
    Wait Until Keyword Succeeds      3x                                                      20s                            Click Button     ${BUSCAR_PACIENTE_AGENDAMENTO.BTN_PESQUISA_PACIENTE}

Então deve ser apresentado o resultado com sucesso
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_RESULTADO_PACIENTE_NOME}
    Page Should Contain              ${DADOS_PACIENTE.NOME_PACIENTE}

Então deve ser apresentado o nome do conveniado com sucesso
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_RESULTADO_PACIENTE_NOME}
    Page Should Contain              ${DADOS_PACIENTE_CONVENIO.NOME_PACIENTE}
