#!/bin/bash
SIM=1
for ((i=0;i<40;i++))
do
        if [ $SIM == 1 ];then
                beep -f 1200
                SIM=2
        fi
        if [ $SIM == 2 ];then
                for((k=0;k<2000;k++))
                do
                        echo "for" >> /dev/null
                done
                SIM=1
        fi

done