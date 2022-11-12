# Docker

Aqui abordaremos os principais comando da ferramenta Docker.

## O que é o Docker?

[Explicação Diolinux](https://youtu.be/ntbpIfS44Gw)

## Site oficial

[https://www.docker.com/](https://www.docker.com/)

## Instalação (Linux Ubuntu)

```
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

sudo chmod a+r /etc/apt/keyrings/docker.gpg

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

```

Testando instalação:

```
sudo docker run hello-world
```

[Referência](https://docs.docker.com/engine/install/ubuntu/)

## Comandos iniciais

Sintaxe de comandos:

`docker <comando> <sub-comando> <opcoes>`

Exemplo:

`docker container start db27fe1eee0a`

Verificando versão:

`docker version`

Verificando informaçãoes gerais:

`docker info`

Lista de ajuda:

`docker --help`

Listando imagens baixadas:

`docker image ls`

Listando containers rodando:

`docker container ls`

Listando containers rodando e parados:

`docker container ls -a`

Listando redes:

`docker network ls`

Listando volumes:

`docker volume ls`

## Gerenciando containers

### Executando um container

Sintaxe:

`docker container run <opcoes> <nome do container>`

Opções:

- **-p** = troca a porta de rede do container para a porta informada
- **-P** = troca a porta de rede do container para uma porta randômica
- **-d** = executa o container no modo "detaxado" (libera o terminal)

Exemplo rodando o container **nginx** mudando a porta padrão de 80 para 9000 e liberando o terminal:

`docker container run -p 9000:80 -d nginx`

Exemplo rodando o container **nginx** mudando a porta randomicamente e liberando o terminal:

`docker container run -P -d nginx`

### Parando um container

Sintaxe:

`docker container stop <ID do container>`

Exemplo:

`docker container stop 52528c8af607`

### Removendo um container

Sintaxe:

`docker container rm <opcoes> <ID do container>`

Opções:

- **-f** = força a remoção mesmo se o container estiver rodando

Exemplo:

`docker container rm -f 52528c8af607`

### Removendo vários containers ao mesmo tempo

Sintaxe:

`docker container rm $(docker container ls -a -q)`

Opções:

- **-a** = retornar a lista de todos os containers parados e executando
- **-q** = retornar a lista de IDs dos containers que serão removidos