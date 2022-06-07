*** Settings ***
Documentation    Como usuário so sistema S2
...              Quero realizar um procedimento: Consulta Clinico geral
...              Para realizar o atendimente do paciente.
...              * Testes realizados:
...              1 - Validação dos tipos de procedimentos e exame.
...              2 - Validação dos métodos de pagamentos:
...              2.1 - Dinheiro,
# ...            2.2 - Débito,
# ...            2.3 - Crédito,
# ...            2.4 - PIX,
# ...            2.5 - Cartão Manual
...              3 - Recibo: Validação da mensagem de sucesso.
...              4 - Envio do comprovante para email do paciente

Resource    ../../../../src/config/packages.robot

Test Setup       Open Session
Test Teardown    Close Session

# *** Test Case ***
# Cenário 01 - Novo atendimento - Vacina: Combinada hepatite A e B - DINHEIRO
#    [Tags]                    vacina_pagamento_dinheiro
#    # # Set Selenium Speed    0.1 seconds                  0,1 seconds    0.1 seconds

#    Dado que eu esteja na tela de novo atendimento
#    E selecionar a posicao de trabalho e confirmar
#    E iniciar atendimento
#    Quando informar a senha de atendimento
#    E buscar o paciente ja cadastrado
#    E selecionar o paciente
#    E realizar o procedimento de vacina
#    E realizar o pagamento em dinheiro
#    Então devo ver a confirmação do pagamento e finalizo atendimento
#    E envio o recibo para o paciente

# Cenário 02 - Novo atendimento - Vacina: Combinada hepatite A e B - CRÉDITO
#    [Tags]                    vacina_pagamento_credito
#    # # Set Selenium Speed    0.1 seconds                 0,1 seconds    0.1 seconds

#    Dado que eu esteja na tela de novo atendimento
#    E selecionar a posicao de trabalho e confirmar
#    E iniciar atendimento
#    Quando informar a senha de atendimento
#    E buscar o paciente ja cadastrado
#    E selecionar o paciente
#    E realizar o procedimento de vacina
#    E realizar o pagamento com cartão de crédito
#    Então devo ver a confirmação do pagamento e finalizo atendimento
#    E envio o recibo para o paciente

# Cenário 03 - Novo atendimento - Vacina: Combinada hepatite A e B - DÉBITO
#    [Tags]                    vacina_pagamento_debito
#    # # Set Selenium Speed    0.1 seconds                0,1 seconds    0.1 seconds

#    Dado que eu esteja na tela de novo atendimento
#    E selecionar a posicao de trabalho e confirmar
#    E iniciar atendimento
#    Quando informar a senha de atendimento
#    E buscar o paciente ja cadastrado
#    E selecionar o paciente
#    E realizar o procedimento de vacina
#    E realizar o pagamento com cartão de débito
#    Então devo ver a confirmação do pagamento e finalizo atendimento
#    E envio o recibo para o paciente

# Cenário 04 - Novo atendimento - Vacina: Combinada hepatite A e B - PIX
#    [Tags]                    vacina_pagamento_pix
#    # # Set Selenium Speed    0.1 seconds             0,1 seconds    0.1 seconds

#    Dado que eu esteja na tela de novo atendimento
#    E selecionar a posicao de trabalho e confirmar
#    E iniciar atendimento
#    Quando informar a senha de atendimento
#    E buscar o paciente ja cadastrado
#    E selecionar o paciente
#    E realizar o procedimento de vacina
#    E realizar o pagamento via pix
#    Então devo ver a confirmação do pagamento e finalizo atendimento
#    E envio o recibo para o paciente

# Cenário 05 - Novo atendimento - Vacina: Combinada hepatite A e B - CARTÃO MANUAL
#    [Tags]                    vacina_pagamento_cartao_manual
#    # # Set Selenium Speed    0.1 seconds                       0,1 seconds    0.1 seconds

#    Dado que eu esteja na tela de novo atendimento
#    E selecionar a posicao de trabalho e confirmar
#    E iniciar atendimento
#    Quando informar a senha de atendimento
#    E buscar o paciente ja cadastrado
#    E selecionar o paciente
#    E realizar o procedimento de vacina
#    E realizar o pagamento via cartão manual
#    Então devo ver a confirmação do pagamento e finalizo atendimento
#    E envio o recibo para o paciente
