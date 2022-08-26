#!/usr/bin/env bash

# Instalar o apache2
# Instalar o unzip
# Baixar a aplicação disponível no endereço https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip no diretório /tmp
# Copiar os arquivos da aplicação no diretório padrão do apache

#CORES
VERDE='\e[1;92m'
SEM_COR='\e[0m'

echo -e "${VERDE}[INFO] - Instalando Apache... ${SEM_COR}"
sudo apt install apache2

echo -e "${VERDE}[INFO] - Instalando unzip... ${SEM_COR}"
sudo apt install unzip

echo -e "${VERDE}[INFO] - Baixando arquivos... ${SEM_COR}"
cd /temp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo -e "${VERDE}[INFO] - Extraindo arquivos... ${SEM_COR}"
unzip main.zip

echo -e "${VERDE}[INFO] - Enviando arquivos para o diretório do Apache... ${SEM_COR}"
cd /linux-site-dio-main
cp -r ./linux-site-dio-main/* /var/www/html/