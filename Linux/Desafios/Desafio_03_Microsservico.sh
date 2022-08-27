#!/usr/bin/env bash

#CORES
VERDE='\e[1;92m'
SEM_COR='\e[0m'

#Instalação Docker(https://docs.docker.com/engine/install/ubuntu/)
echo -e "${VERDE}[INFO] - Instalando Docker... ${SEM_COR}"
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

#Servidor de banco de dados 
echo -e "${VERDE}[INFO] - Criando container MySQL... ${SEM_COR}"
sudo docker run --name mysql -v /my/own/datadir:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=my-Senha123 -dt mysql:tag

#Servidor web
echo -e "${VERDE}[INFO] - Iniciando Docker Swarm... ${SEM_COR}"
sudo docker swarm init

echo -e "${VERDE}[INFO] - Criando Docker Service PHP... ${SEM_COR}"
sudo docker service create --name web-server-inclusao --replicas 10 -dt - p 80:80 --mount type=volume,src=app,dst=/app/ webdevops/php-apache:alpine-php7

echo -e "${VERDE}[INFO] - Instalando nfs-server... ${SEM_COR}"
sudo apt install nfs-server

sudo echo "
/var/lib/docker/volumes/app/_data *(rw,sync,subtree_check)" >> /etc/exports

sudo exportfs -ar

echo -e "${VERDE}[INFO] - Criando proxy... ${SEM_COR}"
mkdir /proxy
cd /proxy

sudo echo "
http {
   
    upstream all {
        server __ip__:__pota__;
        server __ip__:__pota__;
        server __ip__:__pota__;
    }

    server {
         listen 4500;
         location / {
              proxy_pass http://all/;
         }
    }

}


events { }" >> nginx.conf

sudo echo "
FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf" >> dockerfile

sudo docker build -t proxy-app .

sudo docker run --name my-proxy-app -dti -p 4500:4500 proxy-app

#Cliente Swarm
echo -e "${VERDE}[INFO] - Instalando nfs-common... ${SEM_COR}"
sudo apt install nfs-common

mount -o v3 __ip__:/var/lib/docker/volumes/app/_data /var/lib/docker/volumes/app/_data