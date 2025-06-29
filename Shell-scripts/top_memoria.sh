#!/bin/bash

# Arquivo onde vamos salvar os resultados (pode alterar o caminho).
LOG="$HOME/top_memoria.log"

DATA=$(date "+%Y-%m-%d %H:%M:%S")

# Header para o log
echo "===== Top 15 processos por uso de memória - $DATA =====" >> "$LOG"

# Lista os 15 processos que mais usam memória e adiciona no arquivo
ps aux --sort=-%mem | head -n 16 >> "$LOG"

echo "" >> "$LOG"  # linha em branco para separar as entradas




