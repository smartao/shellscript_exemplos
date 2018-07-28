#!/bin/bash

GOOGLE=`cat /etc/apt/sources.list | grep google`

echo $GOOGLE

if [ -z $GOOGLE ];then
        echo "repositorio nao encontrado"
        e=0

else
        echo "repositorio encontrado!"
        e=1
fi

echo $e

exit