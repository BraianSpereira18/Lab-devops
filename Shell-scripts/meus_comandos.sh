#!/bin/bash
# Meu manual de comandos Linux - By Braian
# Um menu interativo simples para lembrar comandos do terminal

while true; do
  clear
  echo "===== MEU MANUAL DE COMANDOS BÁSICOS ====="
  echo "Selecione uma categoria:"
  echo "1) Comandos de PASTA"
  echo "2) Comandos de ARQUIVOS"
  echo "3) Mover / Renomear"
  echo "4) Outros úteis"
  echo "5) Sair"
  echo "=========================================="
  read -p "Opção: " opcao

  case $opcao in
    1)
      echo ""
      echo "📁 Comandos de Pastas:"
      echo "mkdir nome_da_pasta                 # Criar pasta"
      echo "mkdir -p pasta1/sub1                # Criar com subpasta"
      echo "rmdir nome_da_pasta                 # Remover pasta vazia"
      echo "rm -r nome_da_pasta                 # Remover pasta com tudo"
      read -p "Pressione Enter para voltar ao menu..."
      ;;
    2)
      echo ""
      echo "📄 Comandos de Arquivos:"
      echo "touch nome_arquivo.txt              # Criar arquivo vazio"
      echo "nano nome_arquivo.sh                # Criar ou editar com nano"
      echo "rm nome_arquivo.txt                 # Remover arquivo"
      read -p "Pressione Enter para voltar ao menu..."
      ;;
    3)
      echo ""
      echo "🔄 Mover e Renomear:"