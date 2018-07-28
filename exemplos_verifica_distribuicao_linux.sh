#!/bin/bash

DISTRO=`cat /etc/issue | cut -c1-6`

echo $DISTRO

if [ $DISTRO == 'Debian' ];then
        echo "ok"
else
        echo "erro"
fi