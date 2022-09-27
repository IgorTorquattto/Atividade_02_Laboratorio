#!/bin/bash
echo "Digite o nome do arquivo: "
read var1
consulta=$(sudo find /home/ -iname $var1)
if [ -e "$consulta"  ]; then
    echo "Encontrado em: $consulta"
    echo "Tamanho : $(ls -l $consulta | awk '{print $5}')  "
else
    echo "Não encontrado"
fi

