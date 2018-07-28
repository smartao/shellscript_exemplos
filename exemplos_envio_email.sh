#!/bin/sh
MAILTO="sergei.martao@gmail.com"
#--- EXEMPLOE 1

rm /tmp/teste_email

DIA=Segunda

echo "To:sergei@wllm.com.br" >> /tmp/teste_email
echo -e "Subject: Backup storage teste $DIA\n" >> /tmp/teste_email
echo " enviando" >> /tmp/teste_email

ssmtp sergei@wllm.com.br < /tmp/teste_email
#CAMINHO_LOG_ARQ=/var/log/backup/

#--- EXEMPLO 2

#echo "teste do envio de email automatico" >> /tmp/teste_email
#ssmtp sergei.martao@gmail.com < /tmp/teste_email

#ssmtp sergei@wllm.com.br < /root/emails/email_rsync

#--- EXEMPLO 3

#DATA_VER=`tail -n 12 /var/log/backups/samba/home.log | grep INICIO | cut -c15-16`
#DATA_CONF=`date "+%d"`
#e=1
# o cut so serve para o bkp normal os erros e exclusoes nao!
#if [ $e == 1 ];then
#        if [ $DATA_VER == $DATA_CONF ];then
#               #    tail -n 12 $CAMINHO_LOG_ARQ/${SERVIDOR[$i]}/$ARQ_LOG >> $ARQ_EMAIL
#               echo "ok"
#
#        fi
#fi
