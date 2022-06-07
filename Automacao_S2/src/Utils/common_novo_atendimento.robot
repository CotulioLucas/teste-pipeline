*** Settings ***
Documentation    Keywords Comuns para uso em geral de teste de novo atendimento

*** Keywords ***
Clicar no submenu novo atendimento
    Wait Until Element Is Visible    ${SUBMENU_RECEPCAO.SUB_MENU_NOVOATENDIMENTO}
    Wait Until Keyword Succeeds      3x                                              20s    Click Element    ${SUBMENU_RECEPCAO.SUB_MENU_NOVOATENDIMENTO}

Informar posicao de trabalho e confirmar
    [Documentation]                  espera o elemento aparacecer na tela
    ...                              aperta tecla para selecionar a recepção 01
    ...                              clica no elemento para confirmar a posiçã de tabalho
    Wait Until Element Is Visible    ${POSICAO_TRABALHO.CAMPO_POSICAO_TRABALHO}
    Press Keys                       None                                                    RETURN
    Wait Until Keyword Succeeds      3x                                                      20s       Click Element    ${POSICAO_TRABALHO.BTN_CONFIRMAR_POSICAO}

Clicar em iniciar atendimento
    Wait Until Element Is Visible    ${INICIAR.BTN_INICIAR_ATENDIMENTO}
    Wait Until Keyword Succeeds      3x                                    20s    Click Button    ${INICIAR.BTN_INICIAR_ATENDIMENTO}

Preencher senha de atendimento
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_NOVO_ATENDIMENTO.CAMPO_SENHA_ATENDIMENTO}
    # ${SENHA_ATENDIMENTO}             FakerLibrary.RandomInt               min=1             max=9999          step=1
    ${SENHA_ATENDIMENTO}             FakerLibrary.Numerify      text=%#%#
    Input text                       ${BUSCAR_PACIENTE_NOVO_ATENDIMENTO.CAMPO_SENHA_ATENDIMENTO}      ${SENHA_ATENDIMENTO}
    Set Global Variable              ${SENHA_ATENDIMENTO}

Buscar paciente ja cadastrado
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_NOVO_ATENDIMENTO.CAMPO_BUSCAR_PACIENTE}
    Input Text                       ${BUSCAR_PACIENTE_NOVO_ATENDIMENTO.CAMPO_BUSCAR_PACIENTE}    ${DADOS_PACIENTE.CPF_PACIENTE}
    Click Button                     ${BUSCAR_PACIENTE_NOVO_ATENDIMENTO.BTN_BUSCAR_PACIENTE}

Clicar em selecionar paciente
    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_NOVO_ATENDIMENTO.BTN_SELECIONAR_PACIENTE}
    Wait Until Keyword Succeeds      3x                                                             20s    Click Element    ${BUSCAR_PACIENTE_NOVO_ATENDIMENTO.BTN_SELECIONAR_PACIENTE}

Inserir exame consulta clinico geral
    Wait Until Element Is Visible    ${PROCEDIMENTO_EXAME.CAMPO_PROCEDIMENTO_EXAME}
    Wait Until Keyword Succeeds      3x                                                20s                                    Click Element    ${PROCEDIMENTO_EXAME.CAMPO_PROCEDIMENTO_EXAME}
    Press Keys                       None                                              ${DADOS_PROCEDIMENTO.TIPO_CONSULTA}
    Press Keys                       None                                              ENTER
    Press Keys                       None                                              TAB

Selecionar o executante
    Wait Until Element Is Visible    ${PROCEDIMENTO_EXAME.CAMPO_EXECUTANTE}
    Wait Until Keyword Succeeds      3x                                        20s                                        Click Element    ${PROCEDIMENTO_EXAME.CAMPO_EXECUTANTE}
    Press Keys                       None                                      ${DADOS_EXECUTANTE.EXECUTANTE_CONSULTA}
    Press Keys                       None                                      RETURN

Clicar em salvar procedimento
    [Documentation]                  Keyword utilizada quando for realizar procedimento
    ...                              com o executante Alberto De Carli. Ele não possui assinatura
    ...                              digital, com isso, trata o alert que aparece na tela quando
    ...                              salvar o procedimento.
    Wait Until Element Is Visible    ${PROCEDIMENTO_EXAME.BTN_SALVAR_PROCEDIMENTO}
    Wait Until Keyword Succeeds      3x                                                              20s    Click Element    ${PROCEDIMENTO_EXAME.BTN_SALVAR_PROCEDIMENTO}
    Handle Alert

Clicar em continuar e ir para pagamento
    Wait Until Element Is Visible    ${PROCEDIMENTO_EXAME.BTN_CONTINUAR_PAGAMENTO}
    Wait Until Keyword Succeeds      3x                                               20s    Click Button    ${PROCEDIMENTO_EXAME.BTN_CONTINUAR_PAGAMENTO}
    Handle Alert

Clicar no metodo de pagamento dinheiro
    Wait Until Element Is Visible    ${PAGAMENTOS.BTN_PAGAMENTO_DINHEIRO}
    Wait Until Keyword Succeeds      3x                                      20s    Click Button    ${PAGAMENTOS.BTN_PAGAMENTO_DINHEIRO}

Clicar no metodo de pagamento debito
    Wait Until Element Is Visible    ${PAGAMENTOS.BTN_PAGAMENTO_DEBITO}
    Wait Until Keyword Succeeds      3x                                    20s    Click Button    ${PAGAMENTOS.BTN_PAGAMENTO_DEBITO}

Clicar no metodo de pagamento credito
    Wait Until Element Is Visible    ${PAGAMENTOS.BTN_PAGAMENTO_CREDITO}
    Wait Until Keyword Succeeds      3x                                     20s    Click Button    ${PAGAMENTOS.BTN_PAGAMENTO_CREDITO}

Clicar no metodo de pagamento pix
    Wait Until Element Is Visible    ${PAGAMENTOS.BTN_PAGAMENTO_PIX}
    Wait Until Keyword Succeeds      3x                                 20s    Click Button    ${PAGAMENTOS.BTN_PAGAMENTO_PIX}

Clicar no metodo de pagamento manual
    ${NRO_AUTORIZACAO} =             Random Number                                    digits=19             fix_len=True
    Wait Until Element Is Visible    ${PAGAMENTOS.BTN_PAGAMENTO_MANUAL}
    Wait Until Keyword Succeeds      3x                                               20s                   Click Button     ${PAGAMENTOS.BTN_PAGAMENTO_MANUAL}
    Element Should Be Enabled        ${PAGAMENTOS.BTN_PAGAMENTO_MANUAL}
    Wait Until Element Is Visible    ${PAGAMENTOS.CAMPO_AUTORIZANTE_CARTAO_MANUAL}
    Wait Until Keyword Succeeds      3x                                               20s                   Click Element    ${PAGAMENTOS.CAMPO_AUTORIZANTE_CARTAO_MANUAL}
    Press Keys                       None                                             ENTER
    Input Text                       ${PAGAMENTOS.CAMPO_NRO_AUTORIZACAO}              ${NRO_AUTORIZACAO}

Clicar em processar pagamento
    Wait Until Element Is Visible    ${PAGAMENTOS.BTN_PROCESSAR_PAGAMENTO}
    Wait Until Keyword Succeeds      3x                                       20s    Click Button    ${PAGAMENTOS.BTN_PROCESSAR_PAGAMENTO}

Aguardar pagamento via maquina de cartão
    Wait Until Element Is Visible        ${PAGAMENTOS.LOADER_PAGAMENTO}
    Wait Until Page Does Not Contain     ${MSG_PAGAMENTOS.MSG_VALIDANDO_PAGAMENTO}
    Wait Until Element Is Not Visible    ${PAGAMENTOS.LOADER_PAGAMENTO}

Clicar em finalizar pagamento e fechar modal recibo
    Wait Until Element Is Visible    ${PAGAMENTOS.BTN_FINALIZAR}
    Wait Until Keyword Succeeds      3x                                 20s    Click Button    ${PAGAMENTOS.BTN_FINALIZAR}
    Handle Alert
    Wait Until Element Is Visible    ${PAGAMENTOS.BTN_RECIBO_FECHAR}
    Wait Until Keyword Succeeds      3x                                 20s    Click Button    ${PAGAMENTOS.BTN_RECIBO_FECHAR}

Inserir exame hemograma completo
    Wait Until Element Is Visible    ${PROCEDIMENTO_EXAME.CAMPO_PROCEDIMENTO_EXAME}
    Wait Until Keyword Succeeds      3x                                                20s                                 Click Element    ${PROCEDIMENTO_EXAME.CAMPO_PROCEDIMENTO_EXAME}
    Press Keys                       None                                              ${DADOS_PROCEDIMENTO.TIPO_EXAME}
    Press Keys                       None                                              RETURN

Inserir procedimento de vacina
    Wait Until Element Is Visible    ${PROCEDIMENTO_EXAME.CAMPO_PROCEDIMENTO_EXAME}
    Wait Until Keyword Succeeds      3x                                                20s                                  Click Element    ${PROCEDIMENTO_EXAME.CAMPO_PROCEDIMENTO_EXAME}
    Press Keys                       None                                              ${DADOS_PROCEDIMENTO.TIPO_VACINA}
    Press Keys                       None                                              RETURN

Clicar em salvar procedimento realizado
    [Documentation]                  Keyword utilizada quando for realizar procedimento
    ...                              com executante que tenha assinatura digital valida ou
    ...                              com executante que ja vem preenchido automaticamente.
    ...                              EX: Hemograma Completo - Executante: Enfermagem
    Wait Until Element Is Enabled    ${PROCEDIMENTO_EXAME.CAMPO_DESCONTO}
    Wait Until Element Is Visible    ${PROCEDIMENTO_EXAME.BTN_SALVAR_PROCEDIMENTO}
    Page Should Not Contain          Informe os dados corretamente
    Wait Until Keyword Succeeds      3x                                                       20s    Click Element    ${PROCEDIMENTO_EXAME.BTN_SALVAR_PROCEDIMENTO}

Buscar paciente atendido
    [Documentation]    Kwd criada para utilizar na tela de atendimentos
    ...                foi criada aqui para aproveitar a suite com a mesma senha
    ...                que foi realizado na recepcao e conseguir cancelar o paciente
    ...                correto na tela.

    Wait Until Element Is Visible    ${BUSCAR_PACIENTE_NOVO_ATENDIMENTO.CAMPO_BUSCAR_PACIENTE}
    Input Text                       ${BUSCAR_PACIENTE_NOVO_ATENDIMENTO.CAMPO_BUSCAR_PACIENTE}    ${SENHA_ATENDIMENTO}
    # Click Button                        ${RECP_ATENDIMENTO.BTN_BUSCAR}

Executar javascript e alterar elemento impressão termo
    [Documentation]    Script criado para manipular a DOM e alterar o botão de imprimir termo
    ...                devido a falha em não conseguir fechar o termo de impressão após abri-lo.
    ...                PROCEDIMENTO_EXAME.SCRIPT_MANIPULAR_DOM está vindo com script que vai executar a alteração da DOM.

    Wait Until Element Is Visible    ${PROCEDIMENTO_EXAME.BTN_IMPRIMIR_TERMO_VACINA}
    Execute Javascript               ${PROCEDIMENTO_EXAME.SCRIPT_MANIPULAR_DOM}
