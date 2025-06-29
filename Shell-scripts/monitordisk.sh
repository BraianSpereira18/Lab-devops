#! /bin/bash
# Script para monitorara espaco em disco

echo "Espaco em disco: "
df -h

echo
echo "Maior uso de disco nos diretorios raiz: "
du -h / | head -n 10
