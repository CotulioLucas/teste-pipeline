*** Settings ***
Documentation    Keywords referentes aos cenários de Login

Resource         ../../config/packages.robot

*** Keywords ***
Dado que eu esteja na tela de novo atendimento
    Realizar login
    Clicar no menu recepçao
    Clicar no submenu novo atendimento

E selecionar a posicao de trabalho e confirmar
    Informar posicao de trabalho e confirmar

E iniciar atendimento
    Clicar em iniciar atendimento

Quando informar a senha de atendimento
    Preencher senha de atendimento

E buscar o paciente ja cadastrado
    Buscar paciente ja cadastrado
    Wait Until Element Is Visible       ${BUSCAR_PACIENTE_NOVO_ATENDIMENTO.TBL_RESULTADO_BUSCA}
    Page Should Contain                 ${DADOS_PACIENTE.NOME_PACIENTE}

E selecionar o paciente
    Clicar em selecionar paciente

E realizar o procedimento de consulta
    Inserir exame consulta clinico geral
    Selecionar o executante
    Clicar em salvar procedimento
    Clicar em continuar e ir para pagamento

E realizar o pagamento em dinheiro
    Clicar no metodo de pagamento dinheiro
    Clicar em processar pagamento

E realizar o pagamento com cartão de crédito
    Clicar no metodo de pagamento credito
    Clicar em processar pagamento
    Aguardar pagamento via maquina de cartão

Então devo ver a confirmação do pagamento e finalizo atendimento
    Page Should Contain                       Pagamento confirmado
    Clicar em finalizar pagamento e fechar modal recibo

E realizar o procedimento de exame
    Inserir exame hemograma completo
    Clicar em salvar procedimento realizado
    Clicar em continuar e ir para pagamento

E realizar o pagamento com cartão de débito
    Clicar no metodo de pagamento debito
    Clicar em processar pagamento
    Aguardar pagamento via maquina de cartão

E realizar o pagamento via pix
    Clicar no metodo de pagamento pix
    Clicar em processar pagamento
    Aguardar pagamento via maquina de cartão

E realizar o pagamento via cartão manual
    Clicar no metodo de pagamento manual
    Clicar em processar pagamento

E realizar o procedimento de vacina
    Inserir procedimento de vacina
    Selecionar o executante
    Clicar em salvar procedimento realizado
    Clicar em continuar e ir para pagamento
    Executar javascript e alterar elemento impressão termo

E envio o recibo para o paciente
    Wait Until Element Is Visible       ${PAGAMENTOS.BTN_RECIBO}
    Click Button                        ${PAGAMENTOS.BTN_RECIBO}
    Wait Until Element Is Visible       ${PAGAMENTOS_RECIBO.MODAL_RECIBO}
    Wait Until Element Is Visible       ${PAGAMENTOS_RECIBO.CAMPO_EMAIL_PACIENTE}
    Click Button                        ${PAGAMENTOS_RECIBO.CAMPO_EMAIL_PACIENTE}
    Input Text                          ${PAGAMENTOS_RECIBO.CAMPO_EMAIL_PACIENTE}       ${DADOS_PACIENTE.EMAIL_PACIENTE}
    Click Button                        ${PAGAMENTOS_RECIBO.BTN_ENVIAR_EMAIL}
    Wait Until Element Is Enabled       ${PAGAMENTOS_RECIBO.BTN_ENVIAR_EMAIL}
    Page Should Contain                 ${MSG_PAGAMENTOS.MSG_EMAIL_SUCESSO}
