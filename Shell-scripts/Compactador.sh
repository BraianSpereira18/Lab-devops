#! /bin/bash

read -p "Entre com a operacao desejada: 'compactar' ou 'descompactar'" operacao
case "$operacao" in
        "compactar")
        read -p "Nome do arquivo final (.tar.gz)" arquivo_final
        read -p "Lista de arquivos separados por espacos:" arquivos
        tar -czf "$arquivo_saida" $arquivos
        echo "Compactados com sucesso em $arquivo_final"

        ;;
        "descompactar")
                read -p "Nome do arquivo a descompactar (.tar.gz)" arquivo descompactado
                read -p "Diretorio de destino" diretorio
                tar -xzf "$arquivo" -C "$direotrio"
                echo "Descompactado com sucesso em $diretorio"
        ;;
        *)

        echo "Operacao invalida!"
        echo "Selecione descompactar ou compactar"
        exit 1
        ;;
esac