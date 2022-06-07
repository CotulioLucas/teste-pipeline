*** Settings ***
Documentation    Elementos referente a tela de cadastro de paciente.

*** Variables ***

&{CADASTRAR_PACIENTE}
...       TITULO_PAGINA_CADASTRO_EDICAO=//h2[@title='Atualização de paciente']
...       CAMPO_NOME_SOCIAL=//input[@name='paciente[nome]']
...       CAMPO_NOME_REGISTRO=//input[@name='paciente[nome_registro]']
...       CAMPO_COMO_SER_CHAMADO=//input[@name='paciente[apelido]']
...       CAMPO_SEXO_MASCULINO=//input[@value='M']
...       CAMPO_SEXO_FEMININO=//input[@value='F']
...       CAMPO_DATA_NASCIMENTO=//input[@name='paciente[dt_nasc]']
...       CAMPO_COMO_NOS_CONHECEU=//select[@name='paciente[id_paciente_origem]']
...       CAMPO_CPF=//input[@name='paciente[cpf]']
...       CAMPO_TIP_DOCUMENTO_RG=//input[@name='paciente[documento_tipo]']
...       CAMPO_DOCUMENTO=//input[@name='paciente[rg]']
...       CAMPO_EMAIL=//input[@name='paciente[mail]']
...       CAMPO_CPF=//input[@name='paciente[cpf]']
...       CAMPO_TELEFONE=//input[@name='paciente[tel]']
...       CAMPO_CELULAR=//input[@name='paciente[cel]']
...       CAMPO_CONVENIO_NAO_INFORMADO=//span[text()='Não informado']
...       BTN_CADASTRAR_PACIENTE=//button[@class='bt_primary button primary save']
