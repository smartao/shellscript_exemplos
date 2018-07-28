#-------------------------------------------------------------------------------------
# para pegar se o backup foi feito com sucesso ou não

cat home.log | grep "Terminado" | cut -c20-28

# a saida desse comando deve ser

Terminado

# mas isso se um arquivo de log que foi executado apenas uma unica vez
# sera necessário usar o TAIL para pegar a ultima linha do comando
# Exemplo

tail -n 2 home.log | grep "Terminado" | cut -c23-31

# esse comando sim pega apenas as duas ultimas linhas do arquivo
# e verifica se ele tel a palavra "Terminado" nele

#-------------------------------------------------------------------------------------
# Para o linux apitar comando

beep

# só que no caso ele ira dar apenas um beep rápido e parar
# para ele apitar um um determinado tempo use

beep -l 10000

# assim ele apitara por 10000 milesegundos
# esse beep é continuo
# para criar um beep parecido com a memoria ram
# é necessário criar um for

#Exemplo

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

# ou então usar as propria sintaxes do beep como por exemplo
# alto do tipo, verifica man beep para mais informações

beep -f 1200 -l 100 -d 5

#-------------------------------------------------------------------------------------
# Comando que mostra a primeira pasta do diretório e
# o tamanho dela e o total e organiza por ordem alfabética de pastas.

du -h --total --max-depth=1 /home/segunda/pdc/home/samba/departamentos | sort -k 7 -t /

# para mostra apenas o tamnho do diretorio home em megabits ou giga.

du -h --max-depth=0 /home/terca/samba/home/

#-------------------------------------------------------------------------------------


# comando test sintaxe "test expressão" pode ser usado
# também como "[ expressão ]" não mudando nada no resultado
# ele pode testar qualquer tipo de arquivo ou diretorio
# quando é verdadeiro retorna 0 falso 1

# para verificar se um diretorio existe
# usado o -d de diretorio e o caminho dele:

[ -d /tmp/ ]

# ao executar esse comando ele não mostrar nada
# na tela, para ver o resultado é necessário
# executar:

echo $?

# essa variavel é a que o test usa para retonar o resultado
# sendo o conteudo dela somente 0 ou 1