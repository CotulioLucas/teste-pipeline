Documentation    Keywords referentes aos cenários de Login

Resource    ../../config/packages.robot

*** Keywords ***

Quando iniciar atendimento buscando paciente pela senha
    Clicar no menu médico
    Clicar no submenu atendimento
    Verificar se existe tela confirmar consultorio
    Verificar se existe enquete para medico responder
    Verificar se existe modal de notificação de feedback
    Clicar no paciente pela senha do atendimento

E realizar o atendimento pela ação prontuário
    Iniciar atendimento prontuário paciente
    Inserir informações de diagnóstico do atendimento

Então devo finalizar o atendimento
    Finalizar atendimento do paciente
    Clicar em não contempla retorno
    Clicar em finalizar questionario atendimento
    Wait Until Page Contains                        Atendimento finalizado

E validar o status do paciente como finalizado
    Verificar se existe modal de atendimento deste paciente
