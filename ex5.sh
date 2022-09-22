#!/bin/bash
#Alterado, agora recebe o nome do arquivo como parâmetro
consulta=$(sudo find /home/ -iname $1)
if [ -e "$consulta"  ]; then
    echo "Encontrado em: $consulta"
    echo "Tamanho : $(ls -l $consulta | awk '{print $5}')  "
else
    echo "Não encontrado"
fi

