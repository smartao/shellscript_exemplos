#!/bin/bash
# teste_chama_script

T=1

echo $T

# usando essa opção apenas executara o script mas nenhum variável dele
# poderá ser aproveita dentro desse script
#/root/scripts_testes/./teste_chama_script2

. /root/scripts_testes/teste_chama_script2

echo $T

--------------

# teste_chama_script2

T=10000

#export T

#echo $T