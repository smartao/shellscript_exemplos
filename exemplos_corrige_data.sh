#!/bin/bash

DATA=`date +%A`
#DATA=Wednesday

if [ $DATA == 'Wednesday' ];then
        echo "A data esta em ingles $DATA"
fi
if [ $DATA == 'quarta' ];then
        echo "A data esta em porgues $DATA"
fi