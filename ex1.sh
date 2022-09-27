#!/bin/bash
echo "Digite um número: "
read var1
echo "Digite outro número: "
read var2
if [ $var1 -gt $var2 ]; then
	echo "Primeiro número é o maior."
elif [ $var2 -gt $var1 ]; then
	echo "Segundo número é o maior."
else
	echo "Os números são iguais."
fi
somador=$(($var1+$var2))
echo "Soma: $somador "