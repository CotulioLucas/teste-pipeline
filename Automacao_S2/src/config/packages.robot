*** Settings ***
Documentation    Arquivo de Mapeamento de arquivos
########################################################################
##                                                                    ##
##                    Libraries de todo o projeto                     ##
##                                                                    ##
## #####################################################################
## CRIADO                                                             ##
## DATA:                                      											  ##
## ÁREA: QUALITY ASSURANCE                                            ##
## #####################################################################
Library         SeleniumLibrary
Library         FakerLibrary        locale=pt_BR
Library         DateTime
Library         OperatingSystem
Library         DatabaseLibrary

## #####################################################################
#                                 Data                                 #
## #####################################################################
Variables     ../auto/data/login/credenciais.yaml
Variables     ../auto/data/login/mensagens_login.yaml
Variables     ../auto/data/paciente/dados_paciente.yaml
Variables     ../auto/data/paciente/dados_procedimentos_exames.yaml
Variables     ../auto/data/paciente/mensagens_de_erro_novo_paciente.yaml
Variables     ../auto/data/pagamentos/mensagens_tela_pagamento.yaml
Variables     ../auto/data/atendimentos/mensagens_validacao.yaml
Variables     ../auto/data/enfermagem/dados_preconsulta.yaml
Variables     ../auto/data/medico/atendimento_mensagens.yaml
Variables     ../auto/data/database_drc/configs_connection_db.yaml

## #####################################################################
#                            Pages - Elements                          #
## #####################################################################
Resource      ../auto/elementos/ets_tela_buscar_paciente.robot
Resource      ../auto/elementos/ets_tela_criar_editar_paciente.robot
Resource      ../auto/elementos/ets_tela_iniciar_atendimento.robot
Resource      ../auto/elementos/ets_tela_login_s2.robot
Resource      ../auto/elementos/ets_tela_menus_submenus.robot
Resource      ../auto/elementos/ets_tela_pagamentos.robot
Resource      ../auto/elementos/ets_tela_posicao_de_trabalho.robot
Resource      ../auto/elementos/ets_tela_procedimentos_e_exames.robot
Resource      ../auto/elementos/ets_tela_agendamento.robot
Resource      ../auto/elementos/ets_tela_atendimentos.robot

Resource      ../auto/elementos/enfermagem/ets_informar_sala_atendimento.robot
Resource      ../auto/elementos/enfermagem/ets_tela_preconsulta.robot

Resource      ../auto/elementos/medico/ets_medico_prontuario.robot
Resource      ../auto/elementos/medico/ets_consultorio_atendimento.robot

## #####################################################################
#                            Pages - Commons                          #
## #####################################################################
Resource      ../Utils/common.robot
Resource      ../Utils/common_novo_atendimento.robot
Resource      ../Utils/common_novo_atendimento_criar_editar.robot
Resource      ../Utils/common_agendamento.robot
Resource      ../Utils/common_atendimento.robot
Resource      ../Utils/common_medico_prontuario.robot
Resource      ../Utils/common_enfermagem.robot

## #####################################################################
#                            Pages - Keywords                          #
## #####################################################################

Resource      ../auto/keywords/kws_tela_login_S2.robot
Resource      ../auto/keywords/kws_tela_login_S2_medico.robot
Resource      ../auto/keywords/kws_novo_atendimento_cadastrar.robot
Resource      ../auto/keywords/kws_novo_atendimento_editar.robot
Resource      ../auto/keywords/kws_novo_atendimento_procedimentos.robot
Resource      ../auto/keywords/kws_agendamento_pesquisa_paciente.robot
Resource      ../auto/keywords/kws_agendamento_procedimentos.robot
Resource      ../auto/keywords/kws_tela_atendimentos.robot
Resource      ../auto/keywords/kws_tela_medico_prontuario.robot
Resource      ../auto/keywords/kws_tela_enfermagem_preconsulta.robot
Resource      ../auto/keywords/kws_connection_database_drc.robot


## #####################################################################
#                    Setups e Teardowns / Utils                        #
## #####################################################################
Resource        setups_teardowns.robot
Variables       setups_teardowns.yaml
