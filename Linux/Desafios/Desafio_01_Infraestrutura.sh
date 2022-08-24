#!/usr/bin/env bash

#CORES
VERDE='\e[1;92m'
SEM_COR='\e[0m'

echo -e "${VERDE}[INFO] - Deletando diretórios antigos...${SEM_COR}"

rm -rf /publico
rm -rf /adm
rm -rf /ven
rm -rf /sec
rm -rf /home/*

echo -e "${VERDE}[INFO] - Deletando grupos antigos...${SEM_COR}"

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo -e "${VERDE}[INFO] - Deletando usuários antigos...${SEM_COR}"

sudo userdel -r -f carlos
sudo userdel -r -f maria
sudo userdel -r -f joao_
sudo userdel -r -f debora
sudo userdel -r -f sebastiana
sudo userdel -r -f roberto
sudo userdel -r -f josefina
sudo userdel -r -f amanda
sudo userdel -r -f rogerio

echo -e "${VERDE}[INFO] - Criando diretórios novos...${SEM_COR}"

mkdir /adm
mkdir /publico
mkdir /sec
mkdir /ven

echo -e "${VERDE}[INFO] - Criando grupos novos...${SEM_COR}"

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo -e "${VERDE}[INFO] - Modificando grupos dos diretórios...${SEM_COR}"

chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven

echo -e "${VERDE}[INFO] - Modificando permissões dos diretórios...${SEM_COR}"

chmod 770 /adm
chmod 777 /publico
chmod 770 /sec
chmod 770 /ven

echo -e "${VERDE}[INFO] - Criando usuários novos...${SEM_COR}"

sudo useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt carlos123) -G GRP_ADM
sudo useradd maria -m -s /bin/bash -p $(openssl passwd -crypt maria123) -G GRP_ADM
sudo useradd joao_ -m -s /bin/bash -p $(openssl passwd -crypt joao123) -G GRP_ADM
sudo useradd debora -m -s /bin/bash -p $(openssl passwd -crypt debora123) -G GRP_VEN
sudo useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt sebastiana123) -G GRP_VEN
sudo useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt roberto123) -G GRP_VEN
sudo useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt josefina123) -G GRP_SEC
sudo useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt amanda123) -G GRP_SEC
sudo useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt roberto123) -G GRP_SEC

passwd carlos -e
passwd maria -e
passwd joao_ -e
passwd debora -e
passwd sebastiana -e
passwd roberto -e
passwd josefina -e
passwd amanda -e
passwd rogerio -e
