#!/bin/bash

# Carregando o arquivo variaveis
# possui a lina
#TESTE="ABCD"
. /etc/scripts/variaveis/variaveis

# Testado se a variavel teste foi carregada 
# Valor ABCD
echo -e "TESTE = $TESTE \n"

# For para ler a primeira linha do arquivo
for i in `cat /etc/scripts/variaveis/variaveis3`
do
	# Mostrando o valor da variavel i
	# imprime o valor TESTE
	echo "i = $i"

	# Atruibindo o valor de i a variavel NOME
	NOME=$i
	# imprime o valor da variavel Nome, sendo TESTE
	echo -e "NOME = $NOME\n"
	
	# Converte a variavel $i na variavel $teste 
	# o i=teste nesse caso impirmindo a variavel Teste que o valor é ABCD
	# mesma coisa com a variavel $NOME
	eval "echo i = \$$i"
	eval "echo NOME = \$$NOME"
	echo ""

	# Atribuindo o valor da variavel $TESTE que esta dentro de $i para a variavel $NOMEOK
	# Ou seja o conteudo (string) da variavel $i sera transformata na variavel $TESTE e assim retornar o valor ABCD
	NOMEOK=$(eval "echo \$$i")
	# Impirmindo a variavel NOMEOK o valor sera ABCD mesmo que a variavel TESTE
	echo "NOMEOK = $NOMEOK"
	# Mesma explicacao que acima, usando a variavel NOME
	NOMEOK=$(eval "echo \$$NOME")
	echo "NOMEOK = $NOMEOK "
done
