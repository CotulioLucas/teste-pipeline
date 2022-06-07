*** Settings ***
Documentation    Elementos referente as barras de navegação - Menu e Submenu.
...              OBS: criar apenas o submenu que será automatizado.

*** Variables ***
&{MENU}
...         MENU_RECEPCAO=//b[@data-mod='recepcao']
...         MENU_ENFERMAGEM=//b[@data-mod='enfermagem']
...         MENU_POS_CONSULTA=//b[@data-mod='posconsulta']
...         MENU_CALLCENTER=//b[@data-mod='callcenter']
...         MENU_ESCALA=//b[@data-mod='escala']
...         MENU_GESTAO=//b[@data-mod='gestao']
...         MENU_FINANCEIRO=//b[@data-mod='financeiro']
...         MENU_ADMINISTRACAO=//b[@data-mod='admin']

&{SUBMENU_RECEPCAO}
...        SUB_MENU_NOVOATENDIMENTO=//a[@title='Novo atendimento de recepção']
...        SUB_MENU_ATENDIMENTOS=//a[@title='Atendimentos realizados']
...        SUB_MENU_ODONTO=//a[@title='Tela de atendimento odonto']
...        SUB_MENU_AGENDAMENTO=//a[@title='Agendamento de consultas e procedimentos']

&{SUBMENU_ENFERMAGEM}
...        SUB_MENU_PRECONSULTA=//a[@title='Atendimento de pré-consulta na triagem']

&{SUBMENU_CALLCENTER}
...        SUB_MENU_CHAMADAS=//a[@title='Recepção de chamadas']


## #####################################################################
#           LISTA COM ELEMENTOS QUE TEM NA PÁGINA DE MÉDICOS           #
## #####################################################################
&{MENU_MEDICO}
...         MENU_ABA_MEDICO=//b[@data-mod='medico']

&{SUBMENU_MEDICO}
...         SUB_MENU_ATENDIMENTO=//a[@title='Atendimento Ambulatrorial dos pacientes']
