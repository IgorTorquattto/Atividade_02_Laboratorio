#!/bin/bash

mapfile -t shells < <(getent passwd | cut -d ':' -f7)
size=${#shells[@]}
users=0
id=0

for (( i=0; i<=$size-1 ; )); do
	if [ -z "${shells[$i]}" ]; then
		i=$((i+1))
	else
		aux=${shells[$i]}
		var=1
		for (( j=0; j<=$size ; j++ )); do
			if [ -z "${shells[$j]}" ]; then
				j=$((j+1))
			else
				if [ "$j" == "$i" ]; then  
					j=$((j+1))
				fi
				if [ "${shells[$j]}" == "${shells[$i]}" ]; then
					var=$((var+1))
					unset shells[$j]
				fi
			fi
		done
		i=$((i+1))
		if [ "$i" == "0" ]; then
			users=$var
			id=0
		fi
		if [ $var -gt $users ]; then
			users=$var
			id=$i
		fi
	fi
done             
cont=0
for (( i=0 ; i<=$size; i++ ));do
	if [ -z "${shells[$i]}" ];then
		i=$((i+1))
		cont=$((cont+1))
	fi
	cont=$((cont+1))
	if [ $cont -eq $id ]; then
		echo "O shell mais usado é o '${shells[$i]}' com $users usuarios."
		break
	fi
done