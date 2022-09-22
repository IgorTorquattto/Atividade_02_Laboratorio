#!/bin/bash

if [ $1 -gt $2 ];
then
	echo "Parâmetro 1 maior"
else
	echo "Parâmetro 2 maior"
fi
somador=$(($1+$2))
echo "Soma: $somador "

