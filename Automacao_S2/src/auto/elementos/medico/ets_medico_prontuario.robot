*** Settings ***
Documentation    Elementos referente a tela de atendimento e prontuário médico.

*** Variables ***

&{TELA_ATENDIMENTO_PRONTUARIO}
...       TBL_DADOS_PACIENTE=id=usuario-area
...       TBL_DADOS_PRONTUARIO=id=prontuariodados
...       TBL_HISTORICO_PACIENTE=id=tb_historico
...       IMG_INICIAR_ATENDIMENTO=//img[@data-acao="iniciar"]
...       MENU_PRONTUARIO_DIAGNOSTICO=//ol[@id="prontuariomenuul"]/li[@data-refx="diagnostico"]
...       CAMPO_INFORMAR_DIAGNOSTICO=//div[@id="s2id_prontuario_diagnostico_combo"]/a/span[text()="Adicionar diagnóstico"]
...       TBL_DIAGNOSTICOS_SELECIONADOS=id=diagnosticos
...       IMG_FINALIZAR_ATENDIMENTO=//img[@data-acao="dispensar"]
# ...       RESUMO_PRONTUARIO_DIAGNOSTICO=//*[@id="container-verificar-preenchimento-dados"]/div[2]/div[4]
...       RESUMO_PRONTUARIO_DIAGNOSTICO_CHECK=//div[@class="verificar-preenchimento-dados-body"]/div/i[@class="fa fa-check-circle-o"]
...       BTN_FINALIZAR_ATENDIMENTO_MEDICO=//button[@class="bt_secondary button primary"]
...       TBL_FILA_ATENDIMENTO=id=tb_medico_fila
...       MSG_MENSAGEM_FEEDBACK=//p[text()="Não esqueça de dar o seu feedback referente a agenda de hoje."]
...       RESPONDER_QUESTIONARIO_ESTRELA=//*[@class="estrela"][@title="Excelente"]
...       BTN_ENVIAR_RESPOSTA_ENQUETE=//button[text()="Enviar respostas"]
...       DIV_NOTIFICACAO_FEEDBACK=//div[@class="modalDialog_contentDiv"]
...       BTN_FECHAR_NOTIFICACAO_FEEDBACK=//button[@class="button large primary"]
...       MODAL_QUESTIONARIO_ATENDIMENTO=//div[@id="modal_questionato_at"]
...       ETS_CONTEMPLA_RETORNO_NAO=//span[text()="Não"]
...       BTN_FINALIZAR_QUESTIONARIO_ATENDIMENTO=//button[@class="bt_primary modal_bt finalizarAt"]
...       MODAL_ATENDIMENTOS_DO_PACIENTE=id=modal_body_modal_verificar_atendimento_pac
...       BTN_FECHA_ATENDIMENTO_PACIENTE=//button[@class="bt_secondary modal_bt"]
...       TBL_AVISO_MEDIO_MODAL=id=aviso-medico-modal
...       DIV_MENSAGEM_RESPONDER_PESQUISA=//div[@class="col-1-1 box box-bordernone"]
...       MODAL_ESCALA_MEDICA=//div[@id="escala_medico"]
