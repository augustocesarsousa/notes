# Tomcat

Instalação da versão 8.5.50 no Ubuntu 20.04

## Requisitos

- Java versão 8 ou superior:

## Download e instalação

```
wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.50/bin/apache-tomcat-8.5.50.tar.gz
tar -xvzf ./apache-tomcat-8.5.50.tar.gz
sudo mv ./apache-tomcat-8.5.50 /opt
```

## Alterando a porta padrão

- Abrir o arquivo `/opt/apache-tomcat-8.5.50/conf/server.xml` em um editor de texto;
- Mudar a linha `Connector **port="8080"** protocol="HTTP/1.1"` para a porta de preferência, exemplo, `Connector **port="8001"** protocol="HTTP/1.1"`;

## Dando permissão de execução para os arquivos .sh

Executar o comando abaixo:

`chmod +x /opt/apache-tomcat-8.5.50/bin/*.sh`

## Iniciando o Tomcat

Executar o arquivo abaixo:

`/opt/apache-tomcat-8.5.50/bin/startup.sh`

## Finalizar o Tomcat

Executar o arquivo abaixo:

`/opt/apache-tomcat-8.5.50/bin/shutdown.sh`

## Criando um usuário para gerenciar o Tomcat

- Abrir o arquivo `/opt/apache-tomcat-8.5.50/conf/tomcat-users.xml` em um editor de texto;
- Adicionar a linha abaixo antes da TAG `</tomcat-users>`
`<user username="admin" password="admin" roles="manager-gui,manager-script,manager-jmx,manager-status"/>`