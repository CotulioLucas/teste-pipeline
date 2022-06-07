*** Settings ***
Documentation    Keywords referentes aos cenários de Login como médico.

Resource    ../../config/packages.robot

*** Keywords ***
Quando inserir as credenciais do medico e logar
    Input Text                     ${LOGIN.CAMPO_USUARIO}    ${AUTH_MEDICO.USUARIO_MEDICO}
    Input Text                     ${LOGIN.CAMPO_SENHA}      ${AUTH_MEDICO.SENHA_MEDICO}
    Wait Until Keyword Succeeds    3x                        20s                              Click Button    ${LOGIN.BOTAO_ENTRAR}

Quando inserir as credenciais medicas invalidas e logar
    Input Text                     ${LOGIN.CAMPO_USUARIO}    ${AUTH.USUARIO_INVALIDO}
    Input Text                     ${LOGIN.CAMPO_SENHA}      ${AUTH.SENHA_INVALIDA}
    Wait Until Keyword Succeeds    3x                        20s                         Click Button    ${LOGIN.BOTAO_ENTRAR}

Quando inserir usuario medico valido e senha invalida
    Input Text                     ${LOGIN.CAMPO_USUARIO}    ${AUTH_MEDICO.USUARIO_MEDICO}
    Input Text                     ${LOGIN.CAMPO_SENHA}      ${AUTH.SENHA_INVALIDA}
    Wait Until Keyword Succeeds    3x                        20s                              Click Button    ${LOGIN.BOTAO_ENTRAR}

Quando inserir usuario medico invalido e senha valida
    Input Text                     ${LOGIN.CAMPO_USUARIO}    ${AUTH.USUARIO_INVALIDO}
    Input Text                     ${LOGIN.CAMPO_SENHA}      ${AUTH_MEDICO.SENHA_MEDICO}
    Wait Until Keyword Succeeds    3x                        20s                            Click Button    ${LOGIN.BOTAO_ENTRAR}

Então devo logar no S2 como médico
# Se: Página inicial do médico possur tela de escala médica:
   ${VALIDA_DIV_ESCALA_MEDIDA} =      Run Keyword And Return Status     Page Should Contain Element     ${TELA_ATENDIMENTO_PRONTUARIO.MODAL_ESCALA_MEDICA}
   IF     ${VALIDA_DIV_ESCALA_MEDIDA} == True
          Wait Until Element Is Visible         ${TELA_ATENDIMENTO_PRONTUARIO.BTN_FECHA_ATENDIMENTO_PACIENTE}
          Click Element                         ${TELA_ATENDIMENTO_PRONTUARIO.BTN_FECHA_ATENDIMENTO_PACIENTE}
   ELSE
          Page Should Contain Element      ${MENU_MEDICO.MENU_ABA_MEDICO}
          Wait Until Element Is Visible    ${LOGIN_MEDICO.PAGINA_INICIAL_MEDICO}
          Wait Until Element Is Visible    ${LOGIN_MEDICO.ICONE_MENSAGENS_LOAD}
          Page Should Contain              ${MSG_MEDICO.MEDICO_BOAS_VINDAS}
   END

###########################################################################################################
####################    KEYWORDS PARA TELA DE ATENDIMENTO MÉDICO / PRONTUÁRIO    ########################
###########################################################################################################
E realizar o login como médico
    Clicar no perfil usuario
    # Executar javascript para desabilitar alerta de atualizacao
    Clicar no botao sair
    Quando inserir as credenciais do medico e logar
    Então devo logar no S2 como médico
