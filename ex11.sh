#!/bin/bash
echo "Digite um número: "
read num1
echo "Digite outro número: "
read num2
echo "Qual operação aritmética você deseja realizar? (+ ; - ; x ; /)"
read operador
case $operador in
+) echo "Soma: $(($num1+$num2))" ;;
-) echo "Subtração: $(($num1-$num2))" ;;
x) echo "Multiplicação: $(($num1*$num2))" ;;
/) echo "Divisão: $(($num1/$num2))" ;;
*) echo "Operador aritmético inválido, tente novamente" ;;
esac
