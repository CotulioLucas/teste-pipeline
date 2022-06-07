*** Settings ***
Documentation    Elementos referente a tela para confirmar a sala de enferme.

*** Variables ***

&{TELA_PRECONSULTA}
...      TBL_ULTIMOS_ATENDIMENTOS=//table[@class="table03 at_items noeffect"]
...      IMG_INICIAR_PRECONSULTA=//img[@title="Iniciar atendimento"]
...      CAMPO_SITOLICO=//input[@name="paciente[sinais_vitais][pressao][sistolico]"]
...      CAMPO_DIASTOLICO=//input[@name="paciente[sinais_vitais][pressao][diastolico]"]
...      CAMPO_FREQ_CARDIACA=//input[@name="paciente[sinais_vitais][fc]"]
...      CAMPO_PESO=//input[@name="paciente[medidas][peso]"]
...      CAMPO_ALTURA=//input[@name="paciente[medidas][altura]"]
...      CAMPO_TEXTO_ALERGIAS=id=area_amnese_alergia
...      CAMPO_TEXTO_MEDICAMENTOS=id=area_amnese_medicamentos
...      IMG_FINALIZAR_PRECONSULTA=//img[@title="Encerrar atendimento"]
