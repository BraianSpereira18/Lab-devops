#!/bin/bash


if [ S# -ne 2 ] then
        echo "Erro! nao foram fornecidos dois argumentos"
        exit 1
fi



arg1=$1
arg2=$2

echo "O primeiro argumento e: $arg1"
echo "O segundo argumento e: $arg2"


