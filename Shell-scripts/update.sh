#! /bin/bash
# Script para atualizar pacotes no sistema


echo "Atualizando pacotes do sistema..."
sudo apt update && sudo apt upgrade -y

echo "Atualizacao concluida!"

