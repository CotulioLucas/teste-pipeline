*** Settings ***
Documentation    Elementos referente a pagina de pagamentos.

*** Variables ***
&{PAGAMENTOS}
...         BTN_PAGAMENTO_DINHEIRO=//button[@data-type='dinheiro']
...         BTN_PAGAMENTO_DEBITO=//button[@data-type='debito']
...         BTN_PAGAMENTO_CREDITO=//button[@data-type='credito']
...         BTN_PAGAMENTO_PIX=//button[@data-type='pix']
...         BTN_PAGAMENTO_MANUAL=//button[@data-type='cartao_manual']
...         BTN_PROCESSAR_PAGAMENTO=//button[@title='Processar pagamento']
...         BTN_RECIBO=//button[@class='print-receipt button primary large']
...         BTN_FINALIZAR=//button[@class='confirm-pgto-option button primary large']
...         LOADER_PAGAMENTO=//div[@class="loader2"]
...         CAMPO_AUTORIZANTE_CARTAO_MANUAL=//span[@class='select2-chosen']
...         CAMPO_NRO_AUTORIZACAO=//input[@placeholder='N.º de autorização']
...         BTN_RECIBO_FECHAR=//button[@class='bt_secondary modal_bt']

&{PAGAMENTOS_RECIBO}
...         CAMPO_EMAIL_PACIENTE=//input[@placeholder='E-Mail']
...         BTN_ENVIAR_EMAIL=//button[@class='addon btn_send_mail']
...         BTN_RECIBO_FECHAR=//button[@class='bt_secondary modal_bt']
...         MODAL_RECIBO=id=iframe_print
