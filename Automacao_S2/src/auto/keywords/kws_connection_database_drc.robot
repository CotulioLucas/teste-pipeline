*** Settings ***
Documentation    Keywords referentes aos cenários de Login

Resource    ../../config/packages.robot

*** Keywords ***
Conectar no bando de dados DRC
    Connect To Database     pymysql
    ...                     ${DATA_CONNECTION.DB_NAME}
    ...                     ${DATA_CONNECTION.DB_USER}
    ...                     ${DATA_CONNECTION.DB_PASS}
    ...                     ${DATA_CONNECTION.DB_HOST}
    ...                     ${DATA_CONNECTION.DB_PORT}

Realizar quantidade de consultas para paciente de teste na fila do médico
    ${DATA_ATUAL} =             Get Current Date      UTC
    ${DATA_CONVERTIDA} =        Convert Date          ${DATA_ATUAL}       result_format=%Y%m%d
    ${QTDE} =                   Row Count             SELECT * FROM DRC.atendimentos WHERE id_profissional = 105552 AND data = '${DATA_CONVERTIDA}'

    IF      ${QTDE} > 0
            Log To Console    Entrou no IF
            Execute Sql String     DELETE FROM DRC.atendimentos WHERE id_profissional = 105552 AND data = '${DATA_CONVERTIDA}'
    END
    Log To Console             Qtde atendimentos: ${QTDE}

Fechar conexão
    Disconnect From Database


# *** Test Case ***
# Realizar conexao e apagar atendimentos robot automacoes
#     Conectar no bando de dados DRC
#     Realizar quantidade de consultas para paciente de teste na fila do médico
