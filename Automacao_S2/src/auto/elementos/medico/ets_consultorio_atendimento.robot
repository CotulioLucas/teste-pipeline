*** Settings ***
Documentation    Elementos referente a tela de seleção do centro médico e consultório.

*** Variables ***

&{CONSULTORIO_ATENDIMENTO}
...       CAMPO_CENTRO_MEDICO=//div[@class="select2-container"]/a[@class="select2-choice select2-default"]
...       TBL_RESULTADO_CONSULTORIOS=id=select2-drop
...       CAMPO_CONSULTORIO_MEDICO=//div[text()="CONSULTORIO 03"]
...       BTN_CONFIRMAR_POSICAO=//button[text()="Confirmar"]
