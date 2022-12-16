# SDKman

O SDKman é um gerenciador de versões de kits de desenvolvimento de software (SDKs), ele consegue gerenciar versões de Java, Kotlin, Groovy, Maven, dentre muitos outros.

## Site oficial

[https://sdkman.io/](https://sdkman.io/)

**Observação:**

Procedimentos realizados no Ubuntu na versão 20.04.

## Requisitos

Ter instalado:

- curl
- unzip
- zip

Caso não os possua, executar o comando abaixo:

`sudo apt install curl unzip zip`

## Instalação

Executar os comandos abaixo:

```
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
```

## Verificando versões disponíveis para Java

`sdk list java`

## Instalando um SDK

**Sintaxe:**

`sdk install <SDK> <versão>`

**Exmplos:**

- Instalando o Java na versão **8.0.352-zulu**:
`sdk install java 8.0.352-zulu`

- Instalando o Java na versão **17.0.5-zulu**:
`sdk install java 17.0.5-zulu`

## Alterando entre versões de um SDK

**Sintaxe:**

`sdk use <SDK> <versão>`

**Exemplos:**

- Alterando a versão do Java para **17.0.5-zulu**:
`sdk use java 17.0.5-zulu`

## Mudando a versão padrão de um SDK

**Sintaxe:**

`sdk default <SDK> <versão>`

**Exemplos:**

- Mudando a versão padrão do Java para **17.0.5-zulu**:
`sdk default java 17.0.5-zulu`