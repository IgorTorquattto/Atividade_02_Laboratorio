#!/bin/bash
echo "Digite o caminho completo de algum arquivo: "
read var1
if [[ -f "$var1" ]]; then
	t=$(ls -lh "$var1" | awk '{print $5}')
	echo -e "\nO arquivo "\"$var1\"" localizado, Tamanho "\"$t\""\n"
else
         echo -e "\n Arquivo não existe ou é um diretório!\n"
fi
exit 0; 