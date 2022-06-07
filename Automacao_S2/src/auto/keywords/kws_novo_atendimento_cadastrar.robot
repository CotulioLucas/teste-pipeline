*** Settings ***
Documentation    Keyword especificas para teste de cadastro e edicao de paciente.

Resource    ../../config/packages.robot

*** Keywords ***
E buscar paciente não cadastrado
    [Documentation]                 Busca paciente que não possui cadastro
    Buscar paciente sem cadastro

E clicar no botao incluir paciente
    [Documentation]                     Chama kwd para clicar no botão incluir paciente
    Clicar no botao incluir paciente

E inserir informacoes do novo paciente
    [Documentation]       Insere informaçãoes de um paciente que não possui cadastro
    ...                   e clica no botão para cadastrar o paciente novo.

    Inserir informacoes do novo paciente
    Clicar no botao cadastrar paciente

E inserir informacoes invalidas
    [Documentation]       Insere informaçãoes invalidas de um paciente, inserindo apenas CAMPO_CPF
    ...                   e tenta realizar o cadastro faltando informações nos campos obrigatórios.

    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_CPF}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_CPF}    123456789101
    Clicar no botao cadastrar paciente

Então devo ir para a tela de procedimento
    [Documentation]    Valido se estou na tela de procedimentos
    ...                e verifico se existe um elemento na tela

    Wait Until Element Is Visible    ${PROCEDIMENTO_EXAME.BTN_CONTINUAR_PAGAMENTO}
    Page Should Contain Element      ${PROCEDIMENTO_EXAME.BTN_CONTINUAR_PAGAMENTO}
    #Page Should Contain                   ${NOME_PACIENTE}

Então devo ver as mensagens de erro
    [Documentation]    Valido as mensagens de erro quando realizo cadastro
    ...                de paciente sem informar nenhum campo obrigatório

    Wait Until Page Contains    ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.NOME_PACIENTE_INVALIDO}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.NOME_REGISTRO_INVALIDO}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.COMO_SER_CHAMADO_INVALIDO}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.SEXO_PACIENTE_INVALIDO}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.DATA_NASCIMENTO_INVALIDA}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.COMO_NOS_CONHECEU_INVALIDO}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.CELULAR_TELEFONE_INVALIDO}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}

E inserir informações sem informar NOME SOCIAL
    [Documentation]       Carrego a kwd "Carregar dados paciente" e inputo as informações
    ...                   sem informar NOME SOCIAL.

    Carregar dados paciente
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_COMO_SER_CHAMADO}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_COMO_SER_CHAMADO}     ${COMO_SER_CHAMADO}
    Press Keys                            None                                             TAB
    Press Keys                            None                                             TAB
    Press Keys                            None                                             RETURN
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}
    Click Element                         ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}      ${DATA_NASCIMENTO}
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_CPF}
    Click Element                         ${CADASTRAR_PACIENTE.CAMPO_CPF}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_CPF}                  ${CPF_PACIENTE}
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}
    Click Element                         ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}
    Select From List By Index             ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}    2
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}
    Click Element                         ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}            ${RG_PACIENTE}
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
    Click Element                         ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
    Input text                            ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}             ${CAMPO_TELEFONE}
    Clicar no botao cadastrar paciente

Então devo ver mensagem de erro do campo NOME SOCIAL e NOME REGISTRO
    [Documentation]    Valida mensagem de erro quando não insere a informação
    ...                do NOME SOCIAL e NOME REGISTRO.

    Wait Until Page Contains    ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.NOME_PACIENTE_INVALIDO}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.NOME_REGISTRO_INVALIDO}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}

E inserir informações sem informar COMO GOSTARIA DE SER CHAMADO
    [Documentation]       Carrego a kwd "Carregar dados paciente" e inputo as informações
    ...                   sem informar COMO GOSTARIA DE SER CHAMADO.

    Carregar dados paciente
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_NOME_SOCIAL}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_NOME_SOCIAL}          ${NOME_PACIENTE}
    Wait Until Keyword Succeeds           3x                                               20s                   Click Element    ${CADASTRAR_PACIENTE.CAMPO_COMO_SER_CHAMADO}
    Press Keys                            None                                             TAB
    Press Keys                            None                                             TAB
    Press Keys                            None                                             RETURN
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}
    Wait Until Keyword Succeeds           3x                                               20s                   Click Element    ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}      ${DATA_NASCIMENTO}
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_CPF}
    Wait Until Keyword Succeeds           3x                                               20s                   Click Element    ${CADASTRAR_PACIENTE.CAMPO_CPF}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_CPF}                  ${CPF_PACIENTE}
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}
    Wait Until Keyword Succeeds           3x                                               20s                   Click Element    ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}
    Select From List By Index             ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}    2
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}
    Wait Until Keyword Succeeds           3x                                               20s                   Click Element    ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}            ${RG_PACIENTE}
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
    Wait Until Keyword Succeeds           3x                                               20s                   Click Element    ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
    Input text                            ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}             ${CAMPO_TELEFONE}
    Clicar no botao cadastrar paciente

Então devo ver mensagem de erro do campo COMO GOSTARIA DE SER CHAMADO
    [Documentation]    Valida mensagem de erro quando não insere a informação
    ...                de COMO GOSTARIA DE SER CHAMADO.

    Wait Until Page Contains    ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}
    Wait Until Page Contains    ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.COMO_SER_CHAMADO_INVALIDO}

E inserir informações sem selecionar o campo SEXO
    [Documentation]       Carrego a kwd "Carregar dados paciente" e inputo as informações
    ...                   sem informar SEXO.

    Carregar dados paciente
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_NOME_SOCIAL}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_NOME_SOCIAL}          ${NOME_PACIENTE}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_COMO_SER_CHAMADO}     ${COMO_SER_CHAMADO}
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}
    Wait Until Keyword Succeeds           3x                                               20s                    Click Element    ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}      ${DATA_NASCIMENTO}
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_CPF}
    Wait Until Keyword Succeeds           3x                                               20s                    Click Element    ${CADASTRAR_PACIENTE.CAMPO_CPF}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_CPF}                  ${CPF_PACIENTE}
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}
    Wait Until Keyword Succeeds           3x                                               20s                    Click Element    ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}
    Select From List By Index             ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}    2
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}
    Wait Until Keyword Succeeds           3x                                               20s                    Click Element    ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}            ${RG_PACIENTE}
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
    Wait Until Keyword Succeeds           3x                                               20s                    Click Element    ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
    Input text                            ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}             ${CAMPO_TELEFONE}
    Clicar no botao cadastrar paciente

Então devo ver mensagem de erro do campo SEXO
    [Documentation]    Valida mensagem de erro quando não insere a informação
    ...                de SEXO.

    Wait Until Page Contains    ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.SEXO_PACIENTE_INVALIDO}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}

E inserir informações sem informar DATA NASCIMENTO
    [Documentation]       Carrego a kwd "Carregar dados paciente" e inputo as informações
    ...                   sem informar DATA NASCIMENTO.

    Carregar dados paciente
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_NOME_SOCIAL}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_NOME_SOCIAL}          ${NOME_PACIENTE}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_COMO_SER_CHAMADO}     ${COMO_SER_CHAMADO}
    Press Keys                            None                                             TAB
    Press Keys                            None                                             TAB
    Press Keys                            None                                             RETURN
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_CPF}
    Wait Until Keyword Succeeds           3x                                               20s                    Click Element    ${CADASTRAR_PACIENTE.CAMPO_CPF}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_CPF}                  ${CPF_PACIENTE}
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}
    Wait Until Keyword Succeeds           3x                                               20s                    Click Element    ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}
    Select From List By Index             ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}    2
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}
    Wait Until Keyword Succeeds           3x                                               20s                    Click Element    ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}            ${RG_PACIENTE}
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
    Wait Until Keyword Succeeds           3x                                               20s                    Click Element    ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
    Input text                            ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}             ${CAMPO_TELEFONE}
    Clicar no botao cadastrar paciente

Então devo ver mensagem de erro do campo DATA NASCIMENTO
    [Documentation]    Valida mensagem de erro quando não insere a informação
    ...                de DATA NASCIMENTO.

    Wait Until Page Contains    ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.DATA_NASCIMENTO_INVALIDA}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}

E inserir informações sem informar COMO NOS CONHECEU
    [Documentation]       Carrego a kwd "Carregar dados paciente" e inputo as informações
    ...                   sem informar COMO NOS CONHECEU.

    Carregar dados paciente
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_NOME_SOCIAL}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_NOME_SOCIAL}         ${NOME_PACIENTE}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_COMO_SER_CHAMADO}    ${COMO_SER_CHAMADO}
    Press Keys                            None                                            TAB
    Press Keys                            None                                            TAB
    Press Keys                            None                                            RETURN
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}
    Wait Until Keyword Succeeds           3x                                              20s                    Click Element    ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}     ${DATA_NASCIMENTO}
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_CPF}
    Click Element                         ${CADASTRAR_PACIENTE.CAMPO_CPF}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_CPF}                 ${CPF_PACIENTE}
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}
    Wait Until Keyword Succeeds           3x                                              20s                    Click Element    ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}           ${RG_PACIENTE}
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
    Wait Until Keyword Succeeds           3x                                              20s                    Click Element    ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
    Input text                            ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}            ${CAMPO_TELEFONE}
    Clicar no botao cadastrar paciente

Então devo ver mensagem de erro do campo COMO NOS CONHECEU
    [Documentation]    Valida mensagem de erro quando não insere a informação
    ...                de                                                        COMO NOS CONHECEU.

    Wait Until Page Contains    ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.COMO_NOS_CONHECEU_INVALIDO}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}

E inserir informações sem informar TELEFONE ou CELULAR
    [Documentation]       Carrego a kwd "Carregar dados paciente" e inputo as informações
    ...                   sem informar TELEFONE ou CELULAR.

    Carregar dados paciente
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_NOME_SOCIAL}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_NOME_SOCIAL}          ${NOME_PACIENTE}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_COMO_SER_CHAMADO}     ${COMO_SER_CHAMADO}
    Press Keys                            None                                             TAB
    Press Keys                            None                                             TAB
    Press Keys                            None                                             RETURN
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}
    Wait Until Keyword Succeeds           3x                                               20s                    Click Element    ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}      ${DATA_NASCIMENTO}
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_CPF}
    Click Element                         ${CADASTRAR_PACIENTE.CAMPO_CPF}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_CPF}                  ${CPF_PACIENTE}
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}
    Wait Until Keyword Succeeds           3x                                               20s                    Click Element    ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}
    Select From List By Index             ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}    2
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}
    Wait Until Keyword Succeeds           3x                                               20s                    Click Element    ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_DOCUMENTO}            ${RG_PACIENTE}
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
    Clicar no botao cadastrar paciente

Então devo ver mensagem de erro do campo TELEFONE ou CELULAR
    [Documentation]    Valida mensagem de erro quando não insere a informação
    ...                de TELEFONE ou CELULAR.

    Wait Until Page Contains    ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.CELULAR_TELEFONE_INVALIDO}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}
