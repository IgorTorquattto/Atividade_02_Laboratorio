#!/bin/bash
echo "Informe o nome de um usuário:"
read nome_usuario
pasta="home/$nome_usuario"

if [ -d $pasta ]; then
	echo "Diretório existe, usuário cadastrado."
else
	echo "Diretório não existe, usuário não cadastrado."
fi

