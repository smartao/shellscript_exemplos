#!/bin/bash
# Script para mostra que a data quando é executada pelo cron ou fcron é convertida em inglês, mesmo que a distribuição esta totalmente instalada em português.

DATE=`date`

echo "$DATE" >> /tmp/teste_fcron