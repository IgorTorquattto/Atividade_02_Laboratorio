#!/bin/bash
#Passar o caminho:
echo "Qual o diretório que estão os arquivos texto? "
read diretorio
cd diretorio
for RENOMEIA in $(ls *.txt)
do
 for PRIMEIRA in $(cat $RENOMEIA | cut -d&quot; &quot; -f1)
 do
 mv $RENOMEIA $PRIMEIRA.txt
 done
done
