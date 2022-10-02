#!/bin/bash

echo "Digite o número da questão que você deseja executar [1,13],ou digite 0 para ver os enunciados das questões."
read questao

case $questao in
0) cat README.md ;;
1) bash ex1.sh ;;
2) bash ex2.sh ;;
3) bash ex3.sh ;;
4) bash ex4.sh ;;
5) bash ex5.sh ;;
6) bash ex6.sh ;;
7) bash ex7.sh ;;
8) bash ex8.sh ;;
9) bash ex9.sh ;;
10) bash ex10.sh ;;
11) bash ex11.sh ;;
12) bash ex12.sh ;;
13) bash ex13.sh ;;
*) echo "Número da questão é inválido." ;;
esac