#!/bin/bash
# Script para renomear arquivos adicionando prefixo ou sufixo
# Autor: Braian dos Santos Pereira
# Data: 2025-06-21
# Objetivo: automatizar a renomeação de arquivos em lote com explicações linha por linha

# Solicita ao usuário o caminho do diretório onde estão os arquivos
read -p "Digite o caminho do diretório: " diretorio

# Solicita se o usuário quer adicionar prefixo (1) ou sufixo (2)
read -p "Deseja adicionar um [1] Prefixo ou [2] Sufixo? " tipo

# Solicita o texto que será adicionado como prefixo ou sufixo
read -p "Digite o texto do prefixo/sufixo: " texto

# Muda para o diretório informado pelo usuário
cd "$diretorio" || { echo "Diretório inválido"; exit 1; }

# Para cada arquivo no diretório atual
for arquivo in *; do
  # Verifica se é um arquivo regular (ignora pastas, links, etc.)
  if [ -f "$arquivo" ]; then
    if [ "$tipo" == "1" ]; then
      # Caso o usuário tenha escolhido 1 (prefixo),
      # renomeia o arquivo adicionando o texto antes do nome
      # Ex: log.txt → prefixo_log.txt
      mv "$arquivo" "${texto}${arquivo}"
    else
      # Caso o usuário tenha escolhido 2 (sufixo),
      # quebra o nome do arquivo em duas partes:
      # - ${arquivo%.*} = nome do arquivo sem extensão
      # - ${arquivo##*.} = apenas a extensão
      # E junta as partes com o sufixo no meio
      # Ex: log.txt → log_sufixo.txt
      base="${arquivo%.*}"         # Nome sem extensão
      extensao="${arquivo##*.}"    # Apenas a extensão
      mv "$arquivo" "${base}${texto}.${extensao}"