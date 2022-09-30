#!/bin/bash
#Passar o caminho:
cd /home/ufca
for RENOMEIA in $(ls *.txt)
do
 for PRIMEIRA in $(cat $RENOMEIA | cut -d&quot; &quot; -f1)
 do
 mv $RENOMEIA $PRIMEIRA.txt
 done
done
