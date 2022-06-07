*** Settings ***
Documentation    Keywords Comuns para uso em geral

*** Keywords ***
Realizar login
    Dado que esteja na pagina de login do S2
    Quando inserir as credenciais e logar
    Então devo logar no S2

Carregar dados paciente
    [Documentation]    Keyword para criar dados fakes, podendo inserir novas variveis, caso necessário.
    ...                para utilizar a keyword basta chamar ela na keyword que esta criando e, com isso,
    ...                terá acesso a todas as variáveis existentes aqui, por meio do set suite variable.

    ${NOME_PACIENTE}      FakerLibrary.Name Male
    Set Suite Variable    ${NOME_PACIENTE}

    ${COMO_SER_CHAMADO}    FakerLibrary.Name Male
    Set Suite Variable     ${COMO_SER_CHAMADO}

    ${DATA_NASCIMENTO}    FakerLibrary.DateOfBirth    minimum_age=30                     maximum_age=80
    ${DATA_NASCIMENTO}    Convert Date                ${DATA_NASCIMENTO} 00:00:00.000    result_format=%d%m%Y
    Set Suite Variable    ${DATA_NASCIMENTO}

    ${RG_PACIENTE}        FakerLibrary.RandomNumber    digits=9
    Set Suite Variable    ${RG_PACIENTE}

    ${CPF_PACIENTE}       FakerLibrary.cpf
    Set Suite Variable    ${CPF_PACIENTE}

    ${CAMPO_TELEFONE}       Numerify      text=%%########
    Set Suite Variable      ${CAMPO_TELEFONE}

    ${CAMPO_CELULAR}        Numerify      text=%%#########
    Set Suite Variable      ${CAMPO_CELULAR}

    ${COMO_NOS_CONHECEU}    FakerLibrary.Random Digit Not Null Or Empty
    Set Suite Variable      ${COMO_NOS_CONHECEU}

Clicar no menu recepçao
    Wait Until Element Is Visible    ${MENU.MENU_RECEPCAO}
    Wait Until Keyword Succeeds      3x                       20s    Click Element    ${MENU.MENU_RECEPCAO}

Clicar no menu médico
    Wait Until Element Is Visible    ${MENU_MEDICO.MENU_ABA_MEDICO}
    Wait Until Keyword Succeeds      3x                                20s    Click Element    ${MENU_MEDICO.MENU_ABA_MEDICO}

Clicar no menu enfermagem
    Wait Until Element Is Visible    ${MENU.MENU_ENFERMAGEM}
    Wait Until Keyword Succeeds      3x                         20s    Click Element    ${MENU.MENU_ENFERMAGEM}

Clicar no perfil usuario
    Wait Until Element Is Visible    ${LOGIN.BTN_PERFIL_USUARIO}
    Wait Until Keyword Succeeds      3x                             20s    Click Element    ${LOGIN.BTN_PERFIL_USUARIO}

Clicar no botao sair
    Wait Until Element Is Visible    ${LOGIN.BTN_SAIR}
    Wait Until Keyword Succeeds      3x                   20s    Click Link    ${LOGIN.BTN_SAIR}

# Executar javascript para desabilitar alerta de atualizacao
#     Execute Javascript        document.querySelector('.ui-pnotify').setAttribute('style','width: 300px; overflow: visible; none: visible; cursor: auto; opacity: 1; right: 25px; top: 25px;')
