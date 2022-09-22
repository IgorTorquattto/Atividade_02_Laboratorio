#!/bin/bash
#Alterado, passar caminho agora como parâmetro.

ls -l $1 | while read linha; do
    if [ ${linha:0:1} = "d" ]; then
        echo $linha | awk '{print $9 " (dir)"}'
    else
        echo $linha  | awk '{print $9}'
    fi
done

