*** Settings ***
Documentation    Keywords referentes aos cenários de Login

Resource         ../../config/packages.robot

*** Keywords ***
Dado que esteja em novo atendimento
    Realizar login
    Clicar no menu recepçao
    Clicar no submenu novo atendimento
    Informar posicao de trabalho e confirmar
    Clicar em iniciar atendimento

E realizar uma recepcao
    Preencher senha de atendimento
    Buscar paciente ja cadastrado
    Wait Until Element Is Visible       ${BUSCAR_PACIENTE_NOVO_ATENDIMENTO.TBL_RESULTADO_BUSCA}
    Page Should Contain                 ${DADOS_PACIENTE.NOME_PACIENTE}
    Clicar em selecionar paciente
    Inserir exame consulta clinico geral
    Selecionar o executante
    Clicar em salvar procedimento
    Clicar em continuar e ir para pagamento
    Clicar no metodo de pagamento dinheiro
    Clicar em processar pagamento
    Page Should Contain            Pagamento confirmado
    Clicar em finalizar pagamento e fechar modal recibo

Quando acessar a tela de atendimento
    Clicar no menu recepçao
    Clicar no submenu atendimentos

E buscar paciente pela senha de atendimento
    [Documentation]           Keyword criada dentro de common_novo_atendimento.robot
    ...                       para aproveitar a a senha que é criada na hora do encaixe.
    ...                       Com isso, conseguimos usamos e buscar o paciente pela mesma senha
    ...                       dentro da tela de atendimentos.
    Buscar paciente atendido
    Clicar no botao buscar

E realizar o cancelamento do atendimento
    Clicar na ação de cancelamento
    Clicar no campo motivo cancelamento
    Clicar na acao cancelar estornar pagamento
    Clicar em confirmar cancelamento

Então devo ver a mensagem do atendimento cancelado
    Validar mensagem de confirmacao do cancelamento
