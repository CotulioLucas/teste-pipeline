*** Settings ***
Documentation    Keywords Comuns para uso em geral de teste de novo atendimento

*** Keywords ***
Clicar no submenu pré-consulta
    Wait Until Element Is Visible    ${SUBMENU_ENFERMAGEM.SUB_MENU_PRECONSULTA}
    Wait Until Keyword Succeeds      3x                                            20s    Click Element    ${SUBMENU_ENFERMAGEM.SUB_MENU_PRECONSULTA}

Selecionar sala do atendimento medico
    Wait Until Element Is Visible    ${ENF_PRE_CONSULTA.CAMPO_CONSULTORIO}
    Wait Until Keyword Succeeds      3x                                         20s    Click Element    ${ENF_PRE_CONSULTA.CAMPO_CONSULTORIO}
    Wait Until Element Is Visible    ${ENF_PRE_CONSULTA.SALA_ATENDIMENTO_01}
    Wait Until Keyword Succeeds      3x                                         20s    Click Element    ${ENF_PRE_CONSULTA.SALA_ATENDIMENTO_01}
    Wait Until Keyword Succeeds      3x                                         20s    Click Button     ${POSICAO_TRABALHO.BTN_CONFIRMAR_POSICAO}
    Wait Until Page Contains         CONSULTA CLINICO GERAL

Selecionar paciente no pré-consulta
    Wait Until Element Is Visible    xpath://*[text()="${SENHA_ATENDIMENTO}"]/../td/a/i[@class="fa fa-file-o"]
    Mouse Down                       xpath://*[text()="${SENHA_ATENDIMENTO}"]/../td/a/i[@class="fa fa-file-o"]
    Wait Until Keyword Succeeds      3x                                                                           20s    Click Element    xpath://*[text()="${SENHA_ATENDIMENTO}"]/../td/a/i[@class="fa fa-file-o"]

Iniciar pré consulta do paciente
    Wait Until Page Contains Element    ${TELA_PRECONSULTA.TBL_ULTIMOS_ATENDIMENTOS}
    Wait Until Element Is Visible       ${TELA_PRECONSULTA.IMG_INICIAR_PRECONSULTA}
    Wait Until Keyword Succeeds         3x                                                20s    Click Element    ${TELA_PRECONSULTA.IMG_INICIAR_PRECONSULTA}
    Wait Until Element Is Visible       ${BUSCAR_PACIENTE_AGENDAMENTO.POP_UP_MENSAGEM}
    Page Should Contain                 Paciente chamado
    Page Should Contain                 Atendimento iniciado

Inserir informações do paciente no no pré-consulta
    Wait Until Element Is Visible    ${TELA_PRECONSULTA.CAMPO_SITOLICO}
    Element Should Be Enabled        ${TELA_PRECONSULTA.CAMPO_SITOLICO}

    Clear Element Text             ${TELA_PRECONSULTA.CAMPO_SITOLICO}
    Wait Until Keyword Succeeds    3x                                         20s                                   Click Element    ${TELA_PRECONSULTA.CAMPO_SITOLICO}
    Press Keys                     ${TELA_PRECONSULTA.CAMPO_SITOLICO}         ${DADOS_PRECONSULTA.SISTOLICA}

    Clear Element Text             ${TELA_PRECONSULTA.CAMPO_DIASTOLICO}
    Wait Until Keyword Succeeds    3x                                         20s                                   Click Element    ${TELA_PRECONSULTA.CAMPO_DIASTOLICO}
    Press Keys                     ${TELA_PRECONSULTA.CAMPO_DIASTOLICO}       ${DADOS_PRECONSULTA.DIASTOLICO}

    Clear Element Text             ${TELA_PRECONSULTA.CAMPO_FREQ_CARDIACA}
    Wait Until Keyword Succeeds    3x                                         20s                                   Click Element    ${TELA_PRECONSULTA.CAMPO_FREQ_CARDIACA}
    Press Keys                     ${TELA_PRECONSULTA.CAMPO_FREQ_CARDIACA}    ${DADOS_PRECONSULTA.FREQ_CARDIACA}

    Clear Element Text             ${TELA_PRECONSULTA.CAMPO_PESO}
    Wait Until Keyword Succeeds    3x                                         20s                                   Click Element    ${TELA_PRECONSULTA.CAMPO_PESO}
    Press Keys                     ${TELA_PRECONSULTA.CAMPO_PESO}             ${DADOS_PRECONSULTA.PESO}

    Clear Element Text             ${TELA_PRECONSULTA.CAMPO_ALTURA}
    Wait Until Keyword Succeeds    3x                                         20s                                   Click Element    ${TELA_PRECONSULTA.CAMPO_ALTURA}
    Press Keys                     ${TELA_PRECONSULTA.CAMPO_ALTURA}           ${DADOS_PRECONSULTA.ALTURA}

    Clear Element Text             ${TELA_PRECONSULTA.CAMPO_TEXTO_ALERGIAS}
    Wait Until Keyword Succeeds    3x                                          20s                                   Click Element    ${TELA_PRECONSULTA.CAMPO_TEXTO_ALERGIAS}
    Press Keys                     ${TELA_PRECONSULTA.CAMPO_TEXTO_ALERGIAS}    ${DADOS_PRECONSULTA.INFO_ALERGIAS}

    Clear Element Text             ${TELA_PRECONSULTA.CAMPO_TEXTO_MEDICAMENTOS}
    Wait Until Keyword Succeeds    3x                                              20s                                       Click Element    ${TELA_PRECONSULTA.CAMPO_TEXTO_MEDICAMENTOS}
    Press Keys                     ${TELA_PRECONSULTA.CAMPO_TEXTO_MEDICAMENTOS}    ${DADOS_PRECONSULTA.INFO_MEDICAMENTOS}

Finalizar atendimento pré-consulta
    Wait Until Element Is Visible    ${TELA_PRECONSULTA.IMG_FINALIZAR_PRECONSULTA}
    Wait Until Keyword Succeeds      3x                                             20s                 Click Element    ${TELA_PRECONSULTA.IMG_FINALIZAR_PRECONSULTA}

Validar mensagem pre-consulta finalizado
    Wait Until Page Contains    Atendimento finalizado
    Wait Until Page Contains    Por favor, aguarde…

Validar que estou na tela seleção de consultorio
    Wait Until Page Contains    Confirme a sala de Pré-consulta
