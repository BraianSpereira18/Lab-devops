# 🧾 Documentação dos Scripts - Lab DevOps

Este documento descreve os scripts criados durante a trilha de aprendizado em DevOps. Cada script possui um objetivo específico voltado para automação, administração de sistemas Linux ou manutenção de ambientes.

---

## 📦 `Compactador.sh`
Script interativo que permite **compactar** ou **descompactar** arquivos no formato `.tar.gz`.
- Opção de compactação: define nome de saída e arquivos de entrada.
- Opção de descompactação: define arquivo comprimido e diretório de destino.

---

## 💾 `backup.sh`
Cria um **backup comprimido** (.tar.gz) de um diretório específico com base na data e hora atual no nome do arquivo.
- Caminho padrão: `/home/linusbraian/devops`
- Nome gerado: `backup_YYYYMMDD_HHMMSS.tar.gz`

---

## 👤 `autouser.sh`
Script para **criar usuários no sistema Linux** com opção de incluir diretório home.
- Solicita nome, senha e opção de home.
- Verifica se o usuário já existe antes de criar.

---

## 📝 `renamearq.sh`
Permite **renomear arquivos em lote** adicionando um prefixo ou sufixo.
- Solicita diretório, tipo de edição (prefixo/sufixo) e o texto a ser inserido.
- Preserva extensões dos arquivos no modo sufixo.

---

## 📚 `meus_comandos.sh`
Menu interativo estilo "manual pessoal" com **comandos básicos de terminal Linux**.
- Categorias: pastas, arquivos, mover/renomear, entre outros.
- Exibe comandos e explicações para consulta rápida.

---

## 🧪 `testbash.sh`
Script de teste para argumentos no terminal.
- Verifica se foram passados exatamente 2 argumentos.
- Exibe os argumentos fornecidos ao rodar o script.

---

## 🌐 `monitornginx.sh`
Faz o **monitoramento do serviço NGINX**.
- Verifica se o NGINX está ativo ou inativo.
- Mostra hora atual, tempo desde que iniciou ou parou.

---

## 💽 `monitordisk.sh`
Exibe o uso de **espaço em disco**:
- `df -h` para mostrar uso geral.
- `du -h / | head -n 10` para mostrar diretórios com maior consumo.

---

> ✍️ Autor: **Braian dos Santos Pereira**  
> 📅 Atualizado em: 29/06/2025
