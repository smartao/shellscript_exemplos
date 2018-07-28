#!/bin/bash

#-----  EXEMPLO 1
# Exibi apenas o valor de um ponto da matriz
#
#a=1
#b=1
#
#VET[$a$b]=100
#
#echo ${VET[11]}
#OU
#echo ${VET[$a$b]}
#

#----  EXEMPLO 2
# Exibi todos os valores da matriz
#
#VET[11]=Normais
#VET[21]=Caros
#VET[31]=Esportes
#
#VET[12]=Celta
#VET[13]=Gol
#
#VET[22]=Audi
#VET[23]=Ferrari
#
#VET[32]=Carolla
#VET[33]=Fusion
#
#for ((i=1;i<=3;i++))
#do
#       k=1
#       echo "Carros ${VET[$i$k]}"
#       for ((k=2;k<=3;k++))
#       do
#               echo ${VET[$i$k]}
#       done
#done
#
#----  EXEMPLO 3
# Pesquisa dentro da matriz uma string
# Digitada pelo usuario
#
#
#VET[11]=Normais
#VET[21]=Caros
#VET[31]=Esportes
#
#VET[12]=Celta
#VET[13]=Gol
#
#VET[22]=Audi
#VET[23]=Ferrari
#
#VET[32]=Carolla
#VET[33]=Fusion
#
#echo "entre com o nome do carro para pesquisar"
#read CARRO
#
#for ((i=1;i<=3;i++))
#do
##      k=1
##      echo "Carros ${VET[$i$k]}"
#       for ((k=2;k<=3;k++))
#       do
#               if [ ${VET[$i$k]} = $CARRO ];then
#                       echo "caro encontrado!"
#                       echo "Ele esta na posicao $i e $k"
#                       echo "o nome dele e: ${VET[$i$k]}"
#               fi
#       done
#done
#----- EXEMPLO 4
# Demostracao de matriz multidimensional
# Porém existe um problema mesmo utilizando variáveis como contador,
# pois quando chegar no contador a=11 e b=0, o shell pegará o valor 110, porém 
# existe uma diferença nesse caso, porque 110, também poderia ser a=1 e b=10 que também seria 110
# por isso matriz funciona apenas com contadores de 0 a 10 passando disso já começara a ocorrer problemas de ponteiros de vetor
#

a=233
b=23
VET[$a,$b]=100
#
e=23
f=323

VET[$e,$f]=200

echo ${VET[$a,$b]}
echo "$a,$b"

echo ${VET[$e,$f]}
echo "$e,$f"

#Funcionou
#VET[10,5]=100
#echo "${VET[10,5]}"
                             