#!/bin/bash

#----- TESTE 01

#T="teste de quebra\nde linha"
#       echo -e $T


#----- TESTE 02

DATA_INVALIDA=variavel_com_erro_ex
NERRO=01
# QUEBRANDO A LINHA COM O \n
ACAO="O backup nao foi executado!\nE necessario verificar as datas do SO ou \ncomo o script esta tratando elas no case."
TIPO_ERRO="Data invalida: $DATA_INVALIDA";


        DATA=`date "+%d/%m/%y"`
        HORA=`date "+%H:%M:%S"`
        echo "#-- INICIO: $DATA - Segunda, $HORA ---#"
        echo "- - - - - - - - - - - - - - - - - - - - - - -"
        echo -e "Ocorreu um ERRO no backup codigo:$NERRO"
        echo -e "$TIPO_ERRO"
        echo "- - - - - - - - - - - - - - - - - - - - - - -"
        echo -e "Acao tomado devido ao erro:"
        echo -e "$ACAO"
        echo "- - - - - - - - - - - - - - - - - - - - - - -"
        DATA=`date "+%d/%m/%y"`
        HORA=`date "+%H:%M:%S"`
        echo "#---- FIM: $DATA - Segunda, $HORA ----#"