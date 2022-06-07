*** Settings ***
Documentation    Keywords Comuns para uso em geral de teste como médico logado no sistema

*** Keywords ***
Clicar no submenu atendimento
    Wait Until Element Is Visible    ${SUBMENU_MEDICO.SUB_MENU_ATENDIMENTO}
    Wait Until Keyword Succeeds      3x                                        20s    Click Element    ${SUBMENU_MEDICO.SUB_MENU_ATENDIMENTO}

Selecionar centro médico
    Wait Until Element Is Visible    ${CONSULTORIO_ATENDIMENTO.CAMPO_CENTRO_MEDICO}
    Wait Until Keyword Succeeds      3x                                                20s    Click Element    ${CONSULTORIO_ATENDIMENTO.CAMPO_CENTRO_MEDICO}
    Press Keys                       None                                              TAB

Selecionar consultorio de atendimento
    Wait Until Element Is Visible    ${CONSULTORIO_ATENDIMENTO.CAMPO_CONSULTORIO_MEDICO}
    Press Keys                       None                                                   TAB

Confirmar consultorio de atendimento
    Wait Until Element Is Visible    ${CONSULTORIO_ATENDIMENTO.BTN_CONFIRMAR_POSICAO}
    Wait Until Keyword Succeeds      3x                                                  20s    Click Button    ${CONSULTORIO_ATENDIMENTO.BTN_CONFIRMAR_POSICAO}

Clicar no paciente pela senha do atendimento
    ${NOTIFICACAO_FEEDBACK} =    Run Keyword And Return Status          Wait Until Element Is Visible             ${TELA_ATENDIMENTO_PRONTUARIO.MSG_MENSAGEM_FEEDBACK}          10
    Log To Console               ${NOTIFICACAO_FEEDBACK}
    IF        '${NOTIFICACAO_FEEDBACK}' == 'True'
                Wait Until Element Is Visible    ${TELA_ATENDIMENTO_PRONTUARIO.BTN_FECHAR_NOTIFICACAO_FEEDBACK}
                Wait Until Keyword Succeeds      3x       20s       Click Element       ${TELA_ATENDIMENTO_PRONTUARIO.BTN_FECHAR_NOTIFICACAO_FEEDBACK}
                Wait Until Element Is Visible    xpath://*[text()="${SENHA_ATENDIMENTO}"]/../td/a[@title="Prontuario"]
                Wait Until Keyword Succeeds      3x                                                                       20s    Click Element    xpath://*[text()="${SENHA_ATENDIMENTO}"]/../td/a[@title="Prontuario"]
    ELSE
                Wait Until Page Contains         ${SENHA_ATENDIMENTO}
                Wait Until Element Is Visible    xpath://*[text()="${SENHA_ATENDIMENTO}"]/../td/a[@title="Prontuario"]
                Wait Until Keyword Succeeds      3x                                                                       20s    Click Element    xpath://*[text()="${SENHA_ATENDIMENTO}"]/../td/a[@title="Prontuario"]
    END

Iniciar atendimento prontuário paciente
    Wait Until Element Is Visible    ${TELA_ATENDIMENTO_PRONTUARIO.TBL_DADOS_PACIENTE}
    Wait Until Element Is Visible    ${TELA_ATENDIMENTO_PRONTUARIO.TBL_DADOS_PRONTUARIO}
    Wait Until Element Is Visible    ${TELA_ATENDIMENTO_PRONTUARIO.TBL_HISTORICO_PACIENTE}
    Wait Until Element Is Visible    ${TELA_ATENDIMENTO_PRONTUARIO.IMG_INICIAR_ATENDIMENTO}
    Wait Until Keyword Succeeds      3x       20s       Click Element       ${TELA_ATENDIMENTO_PRONTUARIO.IMG_INICIAR_ATENDIMENTO}
    Wait Until Page Contains         Processando...
    Wait Until Page Contains         Atendimento iniciado

Inserir informações de diagnóstico do atendimento
    Wait Until Keyword Succeeds      3x                                                           20s            Click Element    ${TELA_ATENDIMENTO_PRONTUARIO.MENU_PRONTUARIO_DIAGNOSTICO}
    Wait Until Element Is Visible    ${TELA_ATENDIMENTO_PRONTUARIO.CAMPO_INFORMAR_DIAGNOSTICO}
    Wait Until Keyword Succeeds      3x                                                           20s            Click Element    ${TELA_ATENDIMENTO_PRONTUARIO.CAMPO_INFORMAR_DIAGNOSTICO}
    Press Keys                       None                                                         capilariase
    Press Keys                       None                                                         ENTER

Finalizar atendimento do paciente
    Wait Until Element Is Visible    ${TELA_ATENDIMENTO_PRONTUARIO.IMG_FINALIZAR_ATENDIMENTO}
    Wait Until Keyword Succeeds      3x                                                                    20s    Click Element    ${TELA_ATENDIMENTO_PRONTUARIO.IMG_FINALIZAR_ATENDIMENTO}
    Wait Until Element Is Visible    ${TELA_ATENDIMENTO_PRONTUARIO.RESUMO_PRONTUARIO_DIAGNOSTICO_CHECK}
    Wait Until Element Is Visible    ${TELA_ATENDIMENTO_PRONTUARIO.BTN_FINALIZAR_ATENDIMENTO_MEDICO}
    Wait Until Keyword Succeeds      3x                                                                    20s    Click Button     ${TELA_ATENDIMENTO_PRONTUARIO.BTN_FINALIZAR_ATENDIMENTO_MEDICO}

Verificar se existe tela confirmar consultorio
    ${CONFIRMA_ATENDIMENTO} =    Run Keyword And Return Status          Wait Until Element Is Visible       ${CONSULTORIO_ATENDIMENTO.BTN_CONFIRMAR_POSICAO}    5
    IF      "${CONFIRMA_ATENDIMENTO}" == "True"

            Wait Until Element Is Visible                                   xpath://div[@class="container"]
            ${VALIDA_MSG_SALA} =               Get Text                     xpath://*[@id="frmSelecionaConsultorio"]/legend
            Should Be Equal                    ${VALIDA_MSG_SALA}           Confirme o consultório de atendimento
            Selecionar consultorio e sala de atendimento
    END

Verificar se existe modal de notificação de feedback
    Sleep         2s
    ${NOTIFICACAO_FEEDBACK} =    Run Keyword And Return Status          Page Should Contain Element             ${TELA_ATENDIMENTO_PRONTUARIO.MSG_MENSAGEM_FEEDBACK}
    IF        "${NOTIFICACAO_FEEDBACK}" == "True"
              Verificar e fechar mensagem notificação feedback
    END

Verificar se existe enquete para medico responder
    Sleep    3s
    ${ENQUETE_MEDICO} =    Run Keyword And Return Status        Wait Until Element Is Visible       ${TELA_ATENDIMENTO_PRONTUARIO.DIV_MENSAGEM_RESPONDER_PESQUISA}        10s
    Log To Console    Entrou no while: ${ENQUETE_MEDICO}
    WHILE    ${ENQUETE_MEDICO} == True

          ${TABELA_ATENDIMENTO} =       Run Keyword And Return Status       Element Should Be Visible           xpath://*[text()="${SENHA_ATENDIMENTO}"]/../td/a[@title="Prontuario"]
          # ${QUESTIONARIO_ESTRELA} =       Run Keyword And Return Status       Page Should Contain Element       ${TELA_ATENDIMENTO_PRONTUARIO.RESPONDER_QUESTIONARIO_ESTRELA}
          Log To Console    Tabela atendimento: ${TABELA_ATENDIMENTO}

          IF    "${TABELA_ATENDIMENTO}" == "False"
                Log To Console              Se false, entrou no primeito IF
                ${MENSAGEM_ENQUETE} =       Run Keyword And Return Status       Wait Until Element Is Visible       xpath://h1[@class="title-obrigatorio"]        10s
                Log To Console              Mensagem enquente: ${MENSAGEM_ENQUETE}

                IF      "${MENSAGEM_ENQUETE}" == "True"
                        Log To Console    Se True, entrou no segundo IF: ${MENSAGEM_ENQUETE}
                        @{RESULTADOS_ENQUETE} =         Get WebElements             xpath://*[@id="mainarea"]//table[@class="frm home_widget"]
                        FOR       ${ELEMENTOS}        IN        @{RESULTADOS_ENQUETE}
                                  Wait Until Element Is Visible    ${TELA_ATENDIMENTO_PRONTUARIO.BTN_ENVIAR_RESPOSTA_ENQUETE}
                                  Wait Until Element Is Visible    ${TELA_ATENDIMENTO_PRONTUARIO.RESPONDER_QUESTIONARIO_ESTRELA}
                                  Wait Until Keyword Succeeds      3x       20s       Click Element       ${TELA_ATENDIMENTO_PRONTUARIO.RESPONDER_QUESTIONARIO_ESTRELA}
                        END
                        Wait Until Keyword Succeeds      3x       20s       Click Element       ${TELA_ATENDIMENTO_PRONTUARIO.BTN_ENVIAR_RESPOSTA_ENQUETE}
                END
         END
         Sleep     3s
         ${ENQUETE_MEDICO} =    Run Keyword And Return Status        Wait Until Element Is Visible       ${TELA_ATENDIMENTO_PRONTUARIO.DIV_MENSAGEM_RESPONDER_PESQUISA}     10s
    END

Selecionar consultorio e sala de atendimento
    [Documentation]    Keyword criada para chamar a validação se existir a tela para selecionar sala atendimento

    #Selecionar consultorio de atendimento
    Confirmar consultorio de atendimento

Verificar e fechar mensagem notificação feedback
    ${MODAL_FEEDBACK} =     Run Keyword And Return Status        Wait Until Element Is Visible        ${TELA_ATENDIMENTO_PRONTUARIO.DIV_NOTIFICACAO_FEEDBACK}       10s
    IF      "${MODAL_FEEDBACK}" == "True"
            Wait Until Element Is Visible    ${TELA_ATENDIMENTO_PRONTUARIO.DIV_NOTIFICACAO_FEEDBACK}
            Wait Until Keyword Succeeds      3x                                                                       20s    Click Element    ${TELA_ATENDIMENTO_PRONTUARIO.BTN_FECHAR_NOTIFICACAO_FEEDBACK}
            Wait Until Element Is Visible    xpath://*[text()="${SENHA_ATENDIMENTO}"]/../td/a[@title="Prontuario"]
    END

Clicar em finalizar o atendimento na modal resumo prontuario
    Wait Until Element Is Visible    ${TELA_ATENDIMENTO_PRONTUARIO.BTN_FINALIZAR_ATENDIMENTO_MEDICO}
    Wait Until Keyword Succeeds      3x                                                                 20s    Click Button    ${TELA_ATENDIMENTO_PRONTUARIO.BTN_FINALIZAR_QUESTIONARIO_ATENDIMENTO}

Clicar em não contempla retorno
    Wait Until Element Is Visible    ${TELA_ATENDIMENTO_PRONTUARIO.TBL_AVISO_MEDIO_MODAL}
    Wait Until Element Is Visible    ${TELA_ATENDIMENTO_PRONTUARIO.ETS_CONTEMPLA_RETORNO_NAO}
    Wait Until Keyword Succeeds      3x                                                          20s    Click Element    ${TELA_ATENDIMENTO_PRONTUARIO.ETS_CONTEMPLA_RETORNO_NAO}

Clicar em finalizar questionario atendimento
    Wait Until Element Is Visible    ${TELA_ATENDIMENTO_PRONTUARIO.BTN_FINALIZAR_QUESTIONARIO_ATENDIMENTO}
    Wait Until Keyword Succeeds      3x                                                                       20s    Click Element    ${TELA_ATENDIMENTO_PRONTUARIO.BTN_FINALIZAR_QUESTIONARIO_ATENDIMENTO}

Fechar atendimentos do paciente
    Wait Until Element Is Visible       ${TELA_ATENDIMENTO_PRONTUARIO.MODAL_ATENDIMENTOS_DO_PACIENTE}
    Wait Until Element Is Visible       ${TELA_ATENDIMENTO_PRONTUARIO.BTN_FECHA_ATENDIMENTO_PACIENTE}
    Wait Until Keyword Succeeds         3x                                                               20s    Click Element    ${TELA_ATENDIMENTO_PRONTUARIO.BTN_FECHA_ATENDIMENTO_PACIENTE}
    Wait Until Page Contains Element    xpath://*[text()="${SENHA_ATENDIMENTO}"]

# Validar atendimento paciente como finalizado
#     Wait Until Page Contains Element    xpath://*[text()="${SENHA_ATENDIMENTO}"]/../td[@data-stat="E"]
#     ${STATUS_FINALIZADO} =              Get Text                                                          xpath://*[text()="${SENHA_ATENDIMENTO}"]/../td[@data-stat="E"]
#     Should Be Equal                     ${STATUS_FINALIZADO}                                              Finalizado

Verificar se existe modal de atendimento deste paciente
    ${ATEND_DESTE_PACIENTE} =    Run Keyword And Return Status          Wait Until Element Is Visible        ${TELA_ATENDIMENTO_PRONTUARIO.MODAL_ATENDIMENTOS_DO_PACIENTE}        10s
    IF        "${ATEND_DESTE_PACIENTE}" == "True"
              Wait Until Element Is Visible           xpath://div[@id="modal_verificar_atendimento_pac"]/div[@class="modal_body"]
              Click Element                           ${TELA_ATENDIMENTO_PRONTUARIO.BTN_FECHA_ATENDIMENTO_PACIENTE}
    ELSE
              Wait Until Page Contains Element    xpath://*[text()="${SENHA_ATENDIMENTO}"]/../td[@data-stat="E"]
              ${STATUS_FINALIZADO} =              Get Text                      xpath://*[text()="${SENHA_ATENDIMENTO}"]/../td[@data-stat="E"]
              Should Be Equal                     Finalizado                    ${STATUS_FINALIZADO}
    END
