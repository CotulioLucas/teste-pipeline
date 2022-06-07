*** Settings ***
Documentation    Keyword especificas para teste de cadastro e edicao de paciente.

Resource    ../../config/packages.robot

*** Keywords ***
E clicar no botao editar paciente
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_NOVO_ATENDIMENTO.BTN_EDITAR_PACIENTE}
    Wait Until Keyword Succeeds      3x                                                         20s    Click Element    ${BUSCAR_PACIENTE_NOVO_ATENDIMENTO.BTN_EDITAR_PACIENTE}

E alterar paciente sem informar campo NOME SOCIAL
    [Documentation]    Utiliza keyword Clear Text Element para apagar o campo
    ...                informado e validar o cenário sem que o campos esteja preenchido.

    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_NOME_SOCIAL}
    Clear Element Text                    ${CADASTRAR_PACIENTE.CAMPO_NOME_SOCIAL}
    Clicar no botao cadastrar paciente

Então devo ver mensagem de erro apos editar sem NOME SOCIAL
    [Documentation]    Realizado a validação das mensagens de erros exibidas na tela
    ...                quando o campo NOME SOCIAL não for informado.

    Wait Until Page Contains    ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.NOME_PACIENTE_INVALIDO}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.REQUERIMENTO_NOME_SOCIAL}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.NECESSARIO_FOTO_RG}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}

E alterar paciente sem informar campo NOME REGISTRO
    [Documentation]    Utiliza keyword Clear Text Element para apagar o campo
    ...                informado e validar o cenário sem que o campos esteja preenchido.

    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_NOME_REGISTRO}
    Clear Element Text                    ${CADASTRAR_PACIENTE.CAMPO_NOME_REGISTRO}
    Clicar no botao cadastrar paciente

Então devo ver mensagem de erro apos editar sem NOME REGISTRO
    [Documentation]    Realizado a validação das mensagens de erros exibidas na tela
    ...                quando o campo NOME REGISTRO não for informado.

    Wait Until Page Contains    ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.NOME_REGISTRO_INVALIDO}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.REQUERIMENTO_NOME_SOCIAL}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.NECESSARIO_FOTO_RG}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}

E alterar paciente sem informar campo COMO SER CHAMADO
    [Documentation]    Utiliza keyword Clear Text Element para apagar o campo
    ...                informado e validar o cenário sem que o campos esteja preenchido.

    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_COMO_SER_CHAMADO}
    Clear Element Text                    ${CADASTRAR_PACIENTE.CAMPO_COMO_SER_CHAMADO}
    Clicar no botao cadastrar paciente

Então devo ver mensagem de erro apos editar sem COMO SER CHAMADO
    [Documentation]    Realizado a validação das mensagens de erros exibidas na tela
    ...                quando o campo NOME REGISTRO não for informado.

    Wait Until Page Contains    ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.COMO_SER_CHAMADO_INVALIDO}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}

E alterar paciente sem informar campo DATA NASCIMENTO
    [Documentation]    Inseri uma data

    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_DATA_NASCIMENTO}    00000000
    Clicar no botao cadastrar paciente

Então devo ver mensagem de erro apos editar sem DATA NASCIMENTO
    [Documentation]    Realizado a validação das mensagens de erros exibidas na tela
    ...                quando o campo DATA NASCIMENTO não for informado.

    Wait Until Page Contains    ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.DATA_NASCIMENTO_INVALIDA}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}

E alterar paciente sem informar campo COMO NOS CONHECEU
    [Documentation]    Utiliza keyword Clear Text Element para apagar o campo
    ...                informado e validar o cenário sem que o campos esteja preenchido.

    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}
    Wait Until Keyword Succeeds           3x                                               20s    Click Element    ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}
    Select From List By Index             ${CADASTRAR_PACIENTE.CAMPO_COMO_NOS_CONHECEU}    0
    Clicar no botao cadastrar paciente

Então devo ver mensagem de erro apos editar sem COMO NOS CONHECEU
    [Documentation]    Realizado a validação das mensagens de erros exibidas na tela
    ...                quando o campo NOME REGISTRO não for informado.

    Wait Until Page Contains    ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.COMO_NOS_CONHECEU_INVALIDO}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}

E alterar paciente sem informar campo TELEFONE CELULAR e TELEFONE FIXO
    [Documentation]    Utiliza keyword Clear Text Element para apagar o campo
    ...                informado e validar o cenário sem que o campos esteja preenchido.

    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
    Clear Element Text                    ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_CELULAR}
    Clear Element Text                    ${CADASTRAR_PACIENTE.CAMPO_CELULAR}
    Clicar no botao cadastrar paciente

Então devo ver mensagem de erro apos editar sem TELEFONE CELULAR e TELEFONE FIXO
    [Documentation]    Realizado a validação das mensagens de erros exibidas na tela
    ...                quando o campo NOME REGISTRO não for informado.

    Wait Until Page Contains    ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.CELULAR_TELEFONE_INVALIDO}
    Page Should Contain         ${NOVO_USARIO.MSG_ERRO.ERRO_REQUISITAR_DADOS}

E alterar paciente informando campo TELEFONE CELULAR invalido
    [Documentation]    Utiliza keyword Clear Text Element para apagar o campo
    ...                informado e validar o cenário sem que o campos esteja preenchido.

    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_TELEFONE}    000000000
    Wait Until Element Is Visible         ${CADASTRAR_PACIENTE.CAMPO_CELULAR}
    Input Text                            ${CADASTRAR_PACIENTE.CAMPO_CELULAR}     000000000
    Clicar no botao cadastrar paciente
