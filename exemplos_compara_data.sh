#!/bin/bash

T=01

if [ $T == 01 ];then
        echo "ok";
else
        echo "nao funcionou";
fi

HORA_A=12
HORA_E=`date "+%H"`

if [ $HORA_E == $HORA_A ];then
        echo "ok"
else
        echo "erro"
fi