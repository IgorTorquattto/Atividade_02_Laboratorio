#!/bin/bash
echo "Digite um número: "
read var1
i=0 
while [ $i -le $var1 ] 
do 
    resto=`expr $i % 2` 
    if [ $resto -eq 0 ]; then 
        echo -n "$i "
    fi 
    #Para incrementar a variável i até chegar no parâmetro:
    i=`expr $i + 1` 
done
echo 

