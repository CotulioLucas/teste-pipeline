*** Settings ***
Documentation    Como usuário so sistema S2
...              Quero realizar uma pesquisa de uma paciente pelo nome , cpf e carteira de convênio
...              Para verificar se o campo de pesquisa está funcional para os proximos testes

Resource    ../../../../src/config/packages.robot

Test Setup       Open Session
Test Teardown    Close Session

# *** Test Case ***

# Cenário 01: Atendimento: Cancelar atendimento pela senha de atendimento
#    [Tags]                    cancelar_atendimento
#    # # Set Selenium Speed    0.1 seconds             0,1 seconds    0.2 seconds

#    Dado que esteja em novo atendimento
#    E realizar uma recepcao
#    Quando acessar a tela de atendimento
#    E buscar paciente pela senha de atendimento
#    E realizar o cancelamento do atendimento
#    Então devo ver a mensagem do atendimento cancelado
