#!/bin/bash

echo "Por favor, me informe o intervalo das aulas. Qual o primeiro dia de aula? (ano completo/mes/dia): "
read PRIMEIRA
echo "Certo. Qual a data do ultimo dia de aula (no mesmo formato)? "
read ULTIMA
echo "Agora.. me informe quais os dias em que existe aula (exemplo: 1,3 sendo 1 a segunda)"
read QDIAS
data1=$(date -d "$PRIMEIRA" +%s)
data2=$(date -d "$ULTIMA" +%s)

for ((i=$data1; i<=$data2; i+=86400));
do
  data=$(date -d @$i +%w)
  if [[ $QDIAS =~ $data ]]
  then
  	echo "$(date -d @$i +%d/%m/%Y)"
  fi
done