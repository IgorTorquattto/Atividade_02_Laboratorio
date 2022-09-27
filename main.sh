#!/bin/bash

echo "Digite o número da questão que você deseja executar: [1,6]"
read questao

case $questao in
1) bash ex1.sh ;;
2) bash ex2.sh ;;
3) bash ex3.sh ;;
4) bash ex4.sh ;;
5) bash ex5.sh ;;
6) bash ex6.sh ;;







*) echo "Número da questão é inválido." ;;
esac