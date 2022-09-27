#!/bin/bash

echo "Digite o número da questão que você deseja executar: [1,6]"
read questao

case $questao in
1) bash ex1.sh ;;
2) echo "dois" ;;
3) echo "tres" ;;
4) echo "quatro" ;;
5) echo "cinco" ;;
6) echo "seis" ;;
7) echo "sete" ;;
8) echo "oito" ;;
9) echo "nove" ;;
10) echo "dez" ;;
*) echo nao ;;
esac

