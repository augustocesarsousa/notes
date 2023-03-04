# NVM

O NVM é um gerenciador de versões para o NodeJS.

## Site oficial

[https://github.com/nvm-sh/nvm](https://github.com/nvm-sh/nvm)

**Observação:**

Procedimentos realizados no Ubuntu na versão 22.04.

## Instalação

Executar os comandos abaixo:

`wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash`

Adicionar o trecho abaixo no arquivo de configuração do seu terminal, exemplos:

- Bash -> `~/.bashrc`
- Zsh -> `~/.bashrc`

Trecho para adicionar:

```
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
```

Após a instalação, reinicie seu terminal.

## Verificando versões do Node disponíveis para instalação

`nvm ls-remote`

## Verificando versões do Node já instaladas na sua máquina

`nvm ls`

## Instalando uma versão do Node

- Instalando a versão **v14.21.3**:
  `nvm install v14.21.3`

**Observações:**

1. Quando você instalar a primeira versão do Node pelo NVM, ela será definida como a versão padrão toda vez que o sistema for iniciado, podendo ser alterado posteriormente;
2. Quando instalar uma versão do Node o NVM também irá instalar a versão do **npm** conpatível com a mesma.

## Desinstalando uma versão do Node

- Desinstalando a versão **v12.22.12**:
  `nvm unistall v12.22.12`

## Alterando entre versões do Node

- Alterando para a versão **v16.19.1**:
  `nvm use v16.19.1`

**Observações**

1. Para mudar de uma versão para outra, elas precisam estar instaladas;
2. Quando mudamos de versão do Node o **npm** muda junto, isso significa que os pacotes instalados globalmente em uma versão não serão acessados por outra, para solucionar esse problema precisamos migrar os pacotes;

## Migrando pacotes

Para migrar pacotes entre versões, na hora da instalação da nova versão utilizamos o comando `--reinstall-packages-from=` e informamos de qual versão queremos fazer a migração:

**Exemplo**

Migrando o pacotes da versão instalada **v16.19.1** para a nova versão **v18.14.2**

`nvm install v18.14.2 --reinstall-packages-from=v16.19.1`

## Definindo um apelido para uma versão

Para não ter que decorar toda a numeração de uma versão, podemos definir um apelido para cada uma.

- Definindo o apelido **node16** para a versão **v16.19.1**:
  `nvm alias node16`

Agora para usar a versão **v16.19.1** utilizando seu apelido:
`nvm use node16`

## Removendo um apelido

- Removendo o apelido **node16** da versão **v16.19.1**:
  `nvm unalias node16`

## Definindo uma versão padrão

- Definindo a versão **v16.19.1** como padrão do sistema:
  `nvm alias default **v16.19.1**`

## Definindo versão por projeto

Quando utilizamos muitos projetos com versões diferentes do Node, fica difícil lembrar a versão de cada um, para solucionar esse problema podemos criar um arquivo `.nvmrc` na raiz do projeto informando a versão do Node dentro dele.

**Exemplo**

Utilizando o comando **echo** do terminal para criar o arquivo **.nvmrc** com a versão **v14.21.3**:

`echo "v14.21.3" >> .nvmrc`
