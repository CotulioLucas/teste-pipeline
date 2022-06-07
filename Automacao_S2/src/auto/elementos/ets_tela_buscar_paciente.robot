*** Settings ***
Documentation    Elementos referente a tela de busca de paciente.

*** Variables ***
&{BUSCAR_PACIENTE_NOVO_ATENDIMENTO}
...         CAMPO_BUSCAR_PACIENTE=//input[@name='q']
...         CAMPO_SENHA_ATENDIMENTO=//form[@name="fSenha"]/input[@name="senha"] 
...         BTN_BUSCAR_PACIENTE=//button[@class='button primary']
...         TBL_RESULTADO_BUSCA=id=pac_resultados
...         BTN_SELECIONAR_PACIENTE=//a[@title='Selecionar']
...         BTN_EDITAR_PACIENTE=//a[@title='Editar']
...         BTN_MOSTRAR_CONVENIOS=//a[@title='Mostrar convênios']
...         BTN_INCLUIR_PACIENTE=//button[@class='button large']
