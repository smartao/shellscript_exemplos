#!/bin/bash

#---- EXEMPLO 1
#
#DIRETORIO=/tmp/test1/test2
#
#[ -d $DIRETORIO ]
#
#if [ $? == 0 ];then
#       echo "o diretorio existe"
#else
#echo "o diretorio NAO existe"
##mas sera criado o diretorio necessario
#mkdir -p /tmp/test1/test2
#
#fi

#---- EXEMPLO 2

#i=5
#DESTINO=home/backups
#DIA=quinta
#SERVIDOR[$i]=samba
#ORIGEM=boot
#
#
#
#k=1
#
#[ -d /$DESTINO/$DIA/${SERVIDOR[$i]}/$ORIGEM ]
#       k=$?
#       if [ $k == 0 ];then
#               echo "Diretorio existe"
#       #else
#               echo "/$DESTINO/$DIA/${SERVIDOR[$i]}/$ORIGEM"
#       fi
#       if [ $k == 1 ];then # NAO FUNCIONOU COM IF
#               echo "Diretorio nao existe"
#
#       fi
#       echo $?
#
#------- EXEMPLO 3
#if ls -l /boot1;then >> /dev/nul
#       echo "diretorio existe"
#else
#       echo "diretorio nao existe"
#fi
#
#------- EXEMPLO 4

k=1
echo "Insira o caminho onde o arquivo de configuracoes esta:";
        while [ $k -ge 1 ];
        do
                read CAMINHO
                t=1
                [ -e $CAMINHO ]
                t=$?

                if [ $t == 1 ];then
                        echo "o arquivo nao existe!"
                        k=1
                else
                        k=0
                fi
        done