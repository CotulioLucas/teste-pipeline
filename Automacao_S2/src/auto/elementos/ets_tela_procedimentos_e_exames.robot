*** Settings ***
Documentation    Elementos referente a pagina de procedimentos/exames

*** Variables ***
&{PROCEDIMENTO_EXAME}
...         CAMPO_PROCEDIMENTO_EXAME=class=exame
...         CAMPO_EXECUTANTE=//div[@class="select2-container executante"]
...         BTN_SALVAR_PROCEDIMENTO=//i[@class='fa fa-save']
...         BTN_CONTINUAR_PAGAMENTO=id=btn_faturamento
...         CAMPO_DESCONTO=//input[@class='desconto currency']
...         TABELA_INFO_PACIENTE=//table[@id='tb_atendimento_sem_agenda_pac']
...         BTN_IMPRIMIR_TERMO_VACINA=//i[@class='fa fa-print']
...         DIV_LOADER_PAGAMENTO=//div[@class="loader2]

...         SCRIPT_MANIPULAR_DOM=document.querySelector("[data-printed]").setAttribute("data-printed", "1");
