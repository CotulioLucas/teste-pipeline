*** Settings ***
Documentation    Keywords Comuns para uso em geral de teste de novo atendimento

*** Keywords ***
########################################################################
##    ##
##    KEYWORDS - NOVO ATEND. CADASTRO E EDIÇÃO DE PACIENTES    ##
##    ##
## #####################################################################
Buscar paciente sem cadastro
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_NOVO_ATENDIMENTO.BTN_BUSCAR_PACIENTE}
    Wait Until Keyword Succeeds      3x                                                         20s    Click Button    ${BUSCAR_PACIENTE_NOVO_ATENDIMENTO.BTN_BUSCAR_PACIENTE}

Clicar no botao incluir paciente
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_NOVO_ATENDIMENTO.BTN_INCLUIR_PACIENTE}
    Wait Until Keyword Succeeds      3x                                                          20s    Click Button    ${BUSCAR_PACIENTE_NOVO_ATENDIMENTO.BTN_INCLUIR_PACIENTE}

Inserir informacoes do novo paciente
    Carregar dados paciente
    Wait Until Element Is Visible    ${CADASTRAR_PACIENTE.CAMPO_NOME_SOCIAL}
    Input Text                       ${CADASTRAR_PACIENTE.CAMPO_NOME_SOCIAL}         ${NOME_PACIENTE}
    Input Text                       ${CADASTRAR_PACIENTE.CAMPO_COMO_SER_CHAMADO}    ${NOME_PACIENTE}
    Press Keys                       None                                            TAB
    Press Keys                       None                                            TAB
    Press Keys                       None                                            RETURN

    Wait Until Element Is Visible    ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}
    Wait Until Keyword Succeeds      3x                                             20s                   Click Element    ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}
    Element Should Be Focused        ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}
    Input Text                       ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}    ${DATA_NASCIMENTO}

    Wait Until Element Is Visible    ${CADASTRAR_PACIENTE.CAMPO_CPF}
    Wait Until Keyword Succeeds      3x                                 20s                Click Element    ${CADASTRAR_PACIENTE.CAMPO_CPF}
    Input Text                       ${CADASTRAR_PACIENTE.CAMPO_CPF}    ${CPF_PACIENTE}

    Wait Until Element Is Visible    ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}
    Wait Until Keyword Succeeds      3x                                               20s    Click Element    ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}
    Select From List By Index        ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}    3

    Wait Until Element Is Visible    ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}
    Wait Until Keyword Succeeds      3x                                       20s               Click Element    ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}
    Element Should Be Focused        ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}
    Input Text                       ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}    ${RG_PACIENTE}

    Wait Until Element Is Visible    ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
    Wait Until Keyword Succeeds      3x                                             20s                                     Click Element    ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
    Element Should Be Focused        ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
    Input text                       ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}           ${CAMPO_TELEFONE}

    Wait Until Element Is Visible    ${CADASTRAR_PACIENTE.CAMPO_CELULAR}
    Wait Until Keyword Succeeds      3x                                             20s                                     Click Element    ${CADASTRAR_PACIENTE.CAMPO_CELULAR}
    Element Should Be Focused        ${CADASTRAR_PACIENTE.CAMPO_CELULAR}
    Input text                       ${CADASTRAR_PACIENTE.CAMPO_CELULAR}           ${CAMPO_CELULAR}
    ${VERIFICA_TELEFONE}             Get Value                                     ${CADASTRAR_PACIENTE.CAMPO_CELULAR}


    IF       '${VERIFICA_TELEFONE}' == '(__) ____-_____'
              Wait Until Keyword Succeeds      3x       20s       Click Element       ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
              Element Should Be Focused        ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
              Input text                       ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}           ${CAMPO_TELEFONE}
    END

# COMENTANDO: Foi realizado alteração na kwd acima que resolvou o problema.
# Inserir informacao quando der erro
#     Carregar dados paciente             Click Element    ${CADASTRAR_PACIENTE.CAMPO_CELULAR}
#     Input text                       ${CADASTRAR_PACIENTE.CAMPO_CELULAR}        ${CAMPO_CELULAR}
#     ${VERIFICA_CELULAR}              Get Value                                  ${CADASTRAR_PACIENTE.CAMPO_CELULAR}
#     IF       '${VERIFICA_CELULAR}' == '(__) ____-_____'
#               Wait Until Keyword Succeeds      3x                                             20s                     Click Element           ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
#               Element Should Be Focused        ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
#               Input text                       ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}           ${CAMPO_TELEFONE}
#     END

Clicar no botao cadastrar paciente
    Wait Until Element Is Visible    ${CADASTRAR_PACIENTE.BTN_CADASTRAR_PACIENTE}
    Wait Until Keyword Succeeds      3x                                              20s    Click Button    ${CADASTRAR_PACIENTE.BTN_CADASTRAR_PACIENTE}
