#!/bin/bash

echo -n "Informe o nome do usuário: "
read var1

if [[ -n $(cat /etc/passwd | grep -E 'home|root' | cut -d : -f 1| grep -w -io $var1) ]]
then
  echo "Usuário $var1 válido."
else
  echo "Usuário $var1 inválido."
fi