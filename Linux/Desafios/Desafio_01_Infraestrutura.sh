#!/usr/bin/env bash

# Criar os diretórios /publico, /adm, /ven e /sec
# Criar os grupos GRP_ADM, GRP_VEN e GRP_SEC
# Criar os usuários amanda, carlos, debora, joao, josefina, maria, roberto, rogerio e sebastiana
# Adicionar os usuários carlos, maria e joao ao grupo GRP_ADM
# Adicionar os usuários debora, sebastiana e roberto ao grupo GRP_VEN
# Adicionar os usuários amanda, josefina e rogerio ao grupo GRP_SEC
# O dono de todos os diretórios criados será o usuário root
# Todos os usuários terão permissão total dentro do diretório publico
# Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório
# Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem

#CORES
VERDE='\e[1;92m'
SEM_COR='\e[0m'

echo -e "${VERDE}[INFO] - Criando diretórios ${SEM_COR}"

mkdir /adm
mkdir /publico
mkdir /sec
mkdir /ven

echo -e "${VERDE}[INFO] - Criando grupos ${SEM_COR}"

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
