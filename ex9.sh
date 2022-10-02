#!/bin/bash
echo "Digite uma lista de palavras espaçadas, como no exemplo: (caju abacaxi banana) "
read palavras
arr=($palavras)
IFS=$'\n' s=(`sort <<< "${arr[*]}"`); unset IFS
echo "Ordenadas: "
printf "%s\n" "${s[@]}"