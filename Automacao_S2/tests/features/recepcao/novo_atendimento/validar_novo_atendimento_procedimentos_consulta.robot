*** Settings ***
Documentation    Como usuário so sistema S2
...              Quero realizar um procedimento: Consulta, Exame ou Vacina.
...              Para realizar o atendimente do paciente.
...              *## Testes realizados ##*:
...              1 - Validação Consulta: Consulta Clinico Geral.
...              2 - Validação dos métodos de pagamentos:
...              2.1 - Dinheiro,
...              2.2 - Débito,
...              2.3 - Crédito,
...              2.4 - PIX,
...              2.5 - Cartão Manual
...              3 - Validação da mensagem de recibo enviado com sucesso
...              4 - Envio do comprovante para email do paciente

Resource    ../../../../src/config/packages.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Case ***
Cenário 01 - Novo atendimento - Consulta: Clinico Geral - DINHEIRO
    [Tags]    consulta_pagamento_dinheiro

    Dado que eu esteja na tela de novo atendimento
    E selecionar a posicao de trabalho e confirmar
    E iniciar atendimento
    Quando informar a senha de atendimento
    E buscar o paciente ja cadastrado
    E selecionar o paciente
    E realizar o procedimento de consulta
    E realizar o pagamento em dinheiro
    Então devo ver a confirmação do pagamento e finalizo atendimento
    E envio o recibo para o paciente

# Cenário 02 - Novo atendimento - Consulta: Clinico Geral - CRÉDITO
#    [Tags]    consulta_pagamento_credito# 
#
#    Dado que eu esteja na tela de novo atendimento
#    E selecionar a posicao de trabalho e confirmar
#    E iniciar atendimento
#    Quando informar a senha de atendimento
#    E buscar o paciente ja cadastrado
#    E selecionar o paciente
#    E realizar o procedimento de consulta
#    E realizar o pagamento com cartão de crédito
#    Então devo ver a confirmação do pagamento e finalizo atendimento
#    E envio o recibo para o paciente
#
# Cenário 03 - Novo atendimento - Consulta: Clinico Geral - DÉBITO
#    [Tags]    consulta_pagamento_debito
#
#    Dado que eu esteja na tela de novo atendimento
#    E selecionar a posicao de trabalho e confirmar
#    E iniciar atendimento
#    Quando informar a senha de atendimento
#    E buscar o paciente ja cadastrado
#    E selecionar o paciente
#    E realizar o procedimento de consulta
#    E realizar o pagamento com cartão de débito
#    Então devo ver a confirmação do pagamento e finalizo atendimento
#    E envio o recibo para o paciente
#
# Cenário 04 - Novo atendimento - Consulta: Clinico Geral - PIX
#    [Tags]    consulta_pagamento_pix
#
#    Dado que eu esteja na tela de novo atendimento
#    E selecionar a posicao de trabalho e confirmar
#    E iniciar atendimento
#    Quando informar a senha de atendimento
#    E buscar o paciente ja cadastrado
#    E selecionar o paciente
#    E realizar o procedimento de consulta
#    E realizar o pagamento via pix
#    Então devo ver a confirmação do pagamento e finalizo atendimento
#    E envio o recibo para o paciente
#
# Cenário 05 - Novo atendimento - Consulta: Clinico Geral - CARTÃO MANUAL
#    [Tags]    consulta_pagamento_cartao_manual
#
#    Dado que eu esteja na tela de novo atendimento
#    E selecionar a posicao de trabalho e confirmar
#    E iniciar atendimento
#    Quando informar a senha de atendimento
#    E buscar o paciente ja cadastrado
#    E selecionar o paciente
#    E realizar o procedimento de consulta
#    E realizar o pagamento via cartão manual
#    Então devo ver a confirmação do pagamento e finalizo atendimento
#    E envio o recibo para o paciente

Cenário 11 - Novo atendimento - Exame: Hemograma Completo - DINHEIRO
    [Tags]    exame_pagamento_dinheiro

    Dado que eu esteja na tela de novo atendimento
    E selecionar a posicao de trabalho e confirmar
    E iniciar atendimento
    Quando informar a senha de atendimento
    E buscar o paciente ja cadastrado
    E selecionar o paciente
    E realizar o procedimento de exame
    E realizar o pagamento em dinheiro
    Então devo ver a confirmação do pagamento e finalizo atendimento
    E envio o recibo para o paciente
#
# Cenário 12 - Novo atendimento - Exame: Hemograma Completo - CRÉDITO
#    [Tags]    exame_pagamento_credito
#
#    Dado que eu esteja na tela de novo atendimento
#    E selecionar a posicao de trabalho e confirmar
#    E iniciar atendimento
#    Quando informar a senha de atendimento
#    E buscar o paciente ja cadastrado
#    E selecionar o paciente
#    E realizar o procedimento de exame
#    E realizar o pagamento com cartão de crédito
#    Então devo ver a confirmação do pagamento e finalizo atendimento
#    E envio o recibo para o paciente
#
# Cenário 13 - Novo atendimento - Exame: Hemograma Completo - DÉBITO
#    [Tags]    exame_pagamento_debito

#    Dado que eu esteja na tela de novo atendimento
#    E selecionar a posicao de trabalho e confirmar
#    E iniciar atendimento
#    Quando informar a senha de atendimento
#    E buscar o paciente ja cadastrado
#    E selecionar o paciente
#    E realizar o procedimento de exame
#    E realizar o pagamento com cartão de débito
#    Então devo ver a confirmação do pagamento e finalizo atendimento
#    E envio o recibo para o paciente
#
# Cenário 14 - Novo atendimento - Exame: Hemograma Completo - PIX
#    [Tags]    exame_pagamento_pix
#
#    Dado que eu esteja na tela de novo atendimento
#    E selecionar a posicao de trabalho e confirmar
#    E iniciar atendimento
#    Quando informar a senha de atendimento
#    E buscar o paciente ja cadastrado
#    E selecionar o paciente
#    E realizar o procedimento de exame
#    E realizar o pagamento via pix
#    Então devo ver a confirmação do pagamento e finalizo atendimento
#    E envio o recibo para o paciente
#
# Cenário 15 - Novo atendimento - Exame: Hemograma Completo - CARTÃO MANUAL
#    [Tags]    exame_pagamento_cartao_manual
#
#    Dado que eu esteja na tela de novo atendimento
#    E selecionar a posicao de trabalho e confirmar
#    E iniciar atendimento
#    Quando informar a senha de atendimento
#    E buscar o paciente ja cadastrado
#    E selecionar o paciente
#    E realizar o procedimento de exame
#    E realizar o pagamento via cartão manual
#    Então devo ver a confirmação do pagamento e finalizo atendimento
#    E envio o recibo para o paciente

Cenário 21 - Novo atendimento - Vacina: Combinada hepatite A e B - DINHEIRO
    [Tags]    vacina_pagamento_dinheiro

    Dado que eu esteja na tela de novo atendimento
    E selecionar a posicao de trabalho e confirmar
    E iniciar atendimento
    Quando informar a senha de atendimento
    E buscar o paciente ja cadastrado
    E selecionar o paciente
    E realizar o procedimento de vacina
    E realizar o pagamento em dinheiro
    Então devo ver a confirmação do pagamento e finalizo atendimento
    E envio o recibo para o paciente
#
# Cenário 22 - Novo atendimento - Vacina: Combinada hepatite A e B - CRÉDITO
#    [Tags]    vacina_pagamento_credito
#
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
#
# Cenário 23 - Novo atendimento - Vacina: Combinada hepatite A e B - DÉBITO
#    [Tags]    vacina_pagamento_debito
#
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
#
# Cenário 24 - Novo atendimento - Vacina: Combinada hepatite A e B - PIX
#    [Tags]    vacina_pagamento_pix
#
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
#
# Cenário 25 - Novo atendimento - Vacina: Combinada hepatite A e B - CARTÃO MANUAL
#    [Tags]    vacina_pagamento_cartao_manual
#
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
