Documentation    Keywords referentes aos cenários de Login

Resource         ../../config/packages.robot

*** Keywords ***
E realizar a pré-consulta
    Clicar no menu enfermagem
    Clicar no submenu pré-consulta
    Selecionar sala do atendimento medico
    Selecionar paciente no pré-consulta
    Iniciar pré consulta do paciente
    Inserir informações do paciente no no pré-consulta
    Finalizar atendimento pré-consulta
    Validar mensagem pre-consulta finalizado
    Validar que estou na tela seleção de consultorio

Quando realizar a pré-consulta do paciente
    Clicar no menu enfermagem
    Clicar no submenu pré-consulta
    Selecionar sala do atendimento medico
    Selecionar paciente no pré-consulta
    Iniciar pré consulta do paciente
    Inserir informações do paciente no no pré-consulta
    Finalizar atendimento pré-consulta

Então devo ver a mensagem de atendimento finalizado
    Validar mensagem pre-consulta finalizado
