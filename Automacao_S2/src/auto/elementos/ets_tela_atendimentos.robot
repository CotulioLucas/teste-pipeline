*** Settings ***
Documentation    Elementos referente a tela de busca de paciente.

*** Variables ***

&{RECP_ATENDIMENTO}
...                   BTN_BUSCAR=//button[@class="addon"]
...                   BTN_CANCELAMENTO=//button[@title="Cancelamento"]
...                   CAMPO_MOTIVO_CANCELAMENTO=//div[@class="select2-container"]
...                   LISTA_MOTIVO_CANCELAMENTO=//div[@id="select2-drop"]/div[@class="select2-search"]/input[@class="select2-input"]
...                   BTN_CANCELAR_ESTORNAR_PAGAMENTO=//button[@title="Cancelar / Estornar pagamento"]
...                   BTN_CANCELAR_DISABLE=//button[@class="button primary large disabled"]
...                   BTN_CONFIRMAR_CANCELAMENTO=//button[text()="Confirmar cancelamento"]
