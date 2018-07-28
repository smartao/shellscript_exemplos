#------ EXEMPLO 1

#!/bin/bash

nomes[0]=1;
nomes[1]=2;

i=2

nomes[$i]=3;

echo "${nomes[$i]}"

#------ EXEMPLO 2
#!/bin/bash
#-----------------------------------------------------
#  Arquivo:       arrayEx.bash

#  Descricao:     Exemplo de utilizacao de arrays
#                 em GNU Bourne-Again SHell

#  Autor:         VinÃ­us Parizatto

#----------------------------------------------------


nomes=( "Bit" "Nibble" "Byte" "Word" "Double Word")
valores=( 1 4 8 16 32)
x=0;
echo "########################################"
while [ $x != ${#nomes[@]} ]
do
   if [ $x == 0 ]
   then
      echo "A menor \"unidade\" de dados binaris "
      echo "tem o nome de "${nomes[$x]}"."
      echo "Ele representa "${valores[$x]}" Ãº digito"
      echo ""
   else
      echo "1 "${nomes[$x]}" Ã© conjunto de "${valores[$x]}" bits."
   fi
   let "x = x +1"
done
   echo "("${nomes[@]:2}")"
   echo "sao conjuntos de bits"
   echo "("${nomes[@]:1:3}")"
   echo "sas conjuntos menores que 32 bits"
echo "########################################"