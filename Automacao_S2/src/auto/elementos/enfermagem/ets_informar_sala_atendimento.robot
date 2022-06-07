*** Settings ***
Documentation    Elementos referente a tela para confirmar a sala de enferme.

*** Variables ***

&{ENF_PRE_CONSULTA}
...      CAMPO_CONSULTORIO=//select[@name="consultorio"]
...      SALA_ATENDIMENTO_01=//option[normalize-space(text())='PRECONSULTA 01']
