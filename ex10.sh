#!/bin/bash
[ -f saida.txt ] && rm saida.txt
for ((;;)); do
	[ "$palavra" == "sair" ] && break
	[ -f saida.txt ] && sort saida.txt 
	echo -n "Informe a palavra a ser incluída na lista ordenada: "
	read palavra
	echo $palavra >> saida.txt
done 
 
