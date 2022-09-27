#!/bin/bash
#Alterado, passar caminho agora como parâmetro.
echo "Digite o caminho do diretório desejado: "
read var1
ls -l $var1 | while read linha; do
    if [ ${linha:0:1} = "d" ]; then
        echo $linha | awk '{print $9 " (dir)"}'
    else
        echo $linha  | awk '{print $9}'
    fi
done

