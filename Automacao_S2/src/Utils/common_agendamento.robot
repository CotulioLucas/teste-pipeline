*** Settings ***
Documentation    Keywords Comuns para uso em geral de teste de novo atendimento

*** Keywords ***
Dado que eu esteja na tela de agendamento
    Realizar login
    Clicar no menu recepçao
    Wait Until Element Is Visible    ${SUBMENU_RECEPCAO.SUB_MENU_AGENDAMENTO}
    Click Element                    ${SUBMENU_RECEPCAO.SUB_MENU_AGENDAMENTO}
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.LBL_INFORME_PACIENTE}

E selecionar o produto e a unidade
    Wait Until Element Is Visible        ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_SELECIONAR_PRODUTO}
    Wait Until Keyword Succeeds          3x                                                         20s                                    Click Element    ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_SELECIONAR_PRODUTO}
    Press Keys                           None                                                       ${DADOS_PROCEDIMENTO.TIPO_CONSULTA}
    Press Keys                           None                                                       RETURN
    Wait Until Element Is Not Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.TELA_CARREGAMENTO}
    Press Keys                           None                                                       TAB
    Wait Until Keyword Succeeds          3x                                                         20s                                    Click Element    ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_SELECIONAR_UNIDADE}
    Press Keys                           None                                                       ${DADOS_UNIDADES.UNIDADE_PADRAO}
    Press Keys                           None                                                       RETURN
    Wait Until Element Is Not Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.TELA_CARREGAMENTO}

E selecionar o produto com a unidade diferente
    Wait Until Element Is Visible        ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_SELECIONAR_PRODUTO}
    Wait Until Keyword Succeeds          3x                                                         20s                                    Click Element    ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_SELECIONAR_PRODUTO}
    Press Keys                           None                                                       ${DADOS_PROCEDIMENTO.TIPO_CONSULTA}
    Press Keys                           None                                                       RETURN
    Wait Until Element Is Not Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.TELA_CARREGAMENTO}
    Press Keys                           None                                                       TAB
    Wait Until Keyword Succeeds          3x                                                         20s                                    Click Element    ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_SELECIONAR_UNIDADE}
    Press Keys                           None                                                       ${DADOS_UNIDADES.OUTRA_UNIDADE}
    Press Keys                           None                                                       RETURN
    Wait Until Element Is Not Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.TELA_CARREGAMENTO}


E seleciono a data de agendamento no calendario
    Wait Until Element Is Not Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.TELA_CARREGAMENTO}
    ${DATA_ATUAL}                        Get Current Date
    ${CALENDARIO}                        Add Time To Date                                    ${DATA_ATUAL}    7 days           result_format=%Y%m%d
    Wait Until Element Is Visible        xpath://td[@data-day="${CALENDARIO}"]
    Wait Until Element Is Not Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.TELA_CARREGAMENTO}
    Wait Until Keyword Succeeds          3x                                                  20s              Click Element    xpath://td[@data-day="${CALENDARIO}"]
    Wait Until Element Is Not Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.TELA_CARREGAMENTO}

E realizar agendamento
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.BTN_CONFIRMA_AGENDAMENTO}
    Wait Until Keyword Succeeds      3x                                                         20s    Click Element    ${BUSCAR_PACIENTE_AGENDAMENTO.BTN_CONFIRMA_AGENDAMENTO}
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.MODAL_RESTICAO_PRODUTO}
    Wait Until Keyword Succeeds      3x                                                         20s    Click Element    ${BUSCAR_PACIENTE_AGENDAMENTO.BTN_CONTINUA_AGENDAMENTO}

Então valido a mensagem do agendamento com sucesso
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.POP_UP_MENSAGEM}
    Wait Until Page Contains         Agendamento realizado com sucesso

E excluir um agendamento
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.BTN_EXCLUI_AGENDAMENTO}
    Wait Until Keyword Succeeds      3x                                                       20s    Click Element    ${BUSCAR_PACIENTE_AGENDAMENTO.BTN_EXCLUI_AGENDAMENTO}
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.MODAL_RESTICAO_PRODUTO}
    Wait Until Keyword Succeeds      3x                                                       20s    Click Element    ${BUSCAR_PACIENTE_AGENDAMENTO.CAMPO_MOTIVO_CANCELAMENTO}
    Press Keys                       None                                                     TAB
    Wait Until Keyword Succeeds      3x                                                       20s    Click Element    ${BUSCAR_PACIENTE_AGENDAMENTO.BTN_CONFIRMA_CANCELAMENTO}
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.POP_UP_MENSAGEM}

Então valido a mensagem do agendamento cancelado
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.POP_UP_MENSAGEM}
    Wait Until Page Contains         Agendamento cancelado
