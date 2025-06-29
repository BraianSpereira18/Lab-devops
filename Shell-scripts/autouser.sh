#! /bin/bash
# Script para criar novo usuario no sistema

read -p "Digite o nome do novo usuario: " usuario
read -p "Deseja criar diretorio home? (s/n): " home
read -p "Digite a senha do usuario " senha

if id "$usuario" &>/dev/null; then
        echo "usuario ja existe."
else
   if [ "$home" == "s" ]; then
sudo useradd -m "$usuario"
else
sudo useradd "$usuario"
fi
        echo "$usuario:$senha | sudo chpasswd
        echo "Usario $usuario criado com sucesso."
fi
