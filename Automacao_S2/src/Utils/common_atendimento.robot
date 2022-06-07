*** Settings ***
Documentation    Keywords Comuns para uso em geral de teste de novo atendimento

*** Keywords ***
Clicar no submenu atendimentos
    Wait Until Element Is Visible    ${SUBMENU_RECEPCAO.SUB_MENU_ATENDIMENTOS}
    Wait Until Keyword Succeeds      3x                                           20s    Click Element    ${SUBMENU_RECEPCAO.SUB_MENU_ATENDIMENTOS}
    Wait Until Page Contains         ${DADOS_PACIENTE.NOME_PACIENTE}

Clicar no botao buscar
    Wait Until Element Is Visible    ${RECP_ATENDIMENTO.BTN_BUSCAR}
    Wait Until Keyword Succeeds      3x                                20s    Click button    ${RECP_ATENDIMENTO.BTN_BUSCAR}
    Wait Until Page Contains         Exibindo 1 a 1 de 1 resultados

Clicar na ação de cancelamento
    Wait Until Element Is Visible    ${RECP_ATENDIMENTO.BTN_CANCELAMENTO}
    Wait Until Keyword Succeeds      3x                                      20s    Click button    ${RECP_ATENDIMENTO.BTN_CANCELAMENTO}

Clicar no campo motivo cancelamento
    # # # Set Selenium Speed              0.1 seconds             0,1 seconds                      0.2 seconds
    Wait Until Page Does Not Contain    Pagamento confirmado
    Press Keys                          None                    ENTER
    Press Keys                          None                    TAB

Clicar na acao cancelar estornar pagamento
    Wait Until Element Is Visible        ${RECP_ATENDIMENTO.BTN_CANCELAR_ESTORNAR_PAGAMENTO}
    Wait Until Keyword Succeeds          3x                                                     20s    Click button    ${RECP_ATENDIMENTO.BTN_CANCELAR_ESTORNAR_PAGAMENTO}
    Wait Until Element Is Not Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.TELA_CARREGAMENTO}

Clicar em confirmar cancelamento
    Wait Until Element Is Not Visible    ${RECP_ATENDIMENTO.BTN_CANCELAR_DISABLE}
    Wait Until Keyword Succeeds          3x                                          20s    Click Button    ${RECP_ATENDIMENTO.BTN_CONFIRMAR_CANCELAMENTO}

Validar mensagem de confirmacao do cancelamento
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_AGENDAMENTO.POP_UP_MENSAGEM}
    Page Should Contain              ${MSG_ATENDIMENTO.CONFIRMACAO_ATENDIMENTO}
