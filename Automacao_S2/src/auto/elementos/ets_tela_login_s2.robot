*** Settings ***
Documentation    Elementos a tela de login do s2

*** Variables ***
&{LOGIN}
...    CAMPO_USUARIO=id=usuario
...    CAMPO_SENHA=//input[@name='senha']
...    BOTAO_ENTRAR=//button[@class='login_bt btn btn-block bg-blue-dark cursor-pointer text-white']
...    MENSSAGEM_ERRO=//div[@class='signin-error text-red text-xs-center']
...    TELA_PRINCIPAL=id=mainarea
...    BTN_PERFIL_USUARIO=//li[@title="Perfil"]
...    BTN_SAIR=//a[@href="#"]/../a[@title="Sair"]


&{LOGIN_MEDICO}
...   PAGINA_INICIAL_MEDICO=id=root
...   ICONE_MENSAGENS_LOAD=//i[@class="fa fa-envelope-o"]
