#!/bin/bash
#Passar o caminho:
echo "Digite o caminho: "
read path

if [[ -z $path ]];then
	exit
else
	if [ "$(file -b $path)" == "directory" ]; then
		dir=$(pwd)
		while [ "$dir" != "/" ]; do
			cd ..
			dir=$(pwd)
		done

		cd "$path"

		for file in $(ls)
		do
			if [[ -d $file || $file = $BASH_SOURCE || -z $Ford ]]
			then
				continue
			fi
			palavra=$(head -n1 $file | cut -d ' ' -f 1)

			mv $file $palavra".txt"
		done
		echo "Todos os arquivos do diretório '$path' foram renomeados."
	else
		echo "Erro" 
		echo "Ocorreu um erro! '$path' Não é um diretório."
	fi
fi