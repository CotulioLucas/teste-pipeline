*** Settings ***
Documentation    Elementos referente a tela de agendamento.

*** Variables ***

&{BUSCAR_PACIENTE_AGENDAMENTO}
...         CAMPO_BUSCAR_PACIENTE=//input[@name='q']
...         BTN_PESQUISA_PACIENTE=//button[@class='addon']
...         LBL_INFORME_PACIENTE=//span[text()='Informe o paciente']
...         CAMPO_RESULTADO_PACIENTE_NOME=//*[@id="pac_agenda_resultados"]/table/tbody/tr/td[1]
...         BOTAO_SELECIONAR=//*[@ class="fa fa-check"]
...         CAMPO_CEP=//*[@id="atendimento-domiciliar-cep"]
...         CAMPO_SELECIONAR_PRODUTO=//*[@id="s2id_autogen3"]
...         CAMPO_SELECIONAR_UNIDADE=//*[@id="s2id_autogen9"]
...         CAMPO_SELECIONAR_PROFISSIONAL=//span[text()='Profissional']
...         CAMPO_CALENDARIO=//*[@id="calendario"]
...         CAMPO_RESUMO=//*[@id="frmConsultaAgenda"]/div[1]/div/ul
...         BTN_CONFIRMA_AGENDAMENTO=//tbody[@tabindex='0']/tr[1]/td[@data-th='Ações']/button[@title='Realizar agendamento']
...         MODAL_RESTICAO_PRODUTO=//*[@class="modal_body"]
...         BTN_CONTINUA_AGENDAMENTO=//*[@class="bt_primary modal_bt"]
...         TELA_CARREGAMENTO=//div[@id="veil_load"]
...         BTN_EXCLUI_AGENDAMENTO=//*[@class="button tiny default delete"]
...         BTN_CONFIRMA_CANCELAMENTO=//*[@class="bt_primary modal_bt btn-primary"]
...         CAMPO_MOTIVO_CANCELAMENTO=//span[text()='Motivo do cancelamento']
...         POP_UP_MENSAGEM=//div[@class="ui-pnotify-text"]
