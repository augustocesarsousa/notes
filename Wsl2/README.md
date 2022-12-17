# WSL2

O Windows Subsystem for Linux versão 2 ou WSL2, é uma forma que a Microsoft desenvolveu para que possamos executar uma distribuição Linux de forma "integrada" ao Windows, diferente de uma Virtual Machine (VM) padrão onde temos que definir os recursos da máquina de forma fixa como por exemplo, memória RAM, núcleos do processador, espaço em disco etc. Com o WSL a VM compartilha esses recursos com a máquina host.

## Requisitos mínimos

- Windows 10 versão 2004 ou superior

## Instalando o WSL2

Abra o Windows PowerShell como **administrador** e execute o comando abaixo:

`wsl --install`

## Consultando distribuições Linux disponíveis para instalação


Execute o comando abaixo, ele irá listar as distribuições disponíveis no repositório da Microsoft:

` wsl --list --online`

## Instalando uma distribuição Linux específica

**Sintaxe:**

` wsl --install -d <Nome da distribuição>`

**Exemplo**

Instalando a distribuição Ubuntu 20.04 LTS:

` wsl --install -d Ubuntu-20.04`

## Consultado as distribuições instaladas no sistema

` wsl --list`

## Exportando uma distribuição

**Sintaxe:**

`wsl --export <Nome da distribuição> <Diretório do arquivo exportado>`

**Exemplo:**

`wsl --export Ubuntu-20.04 C:\wsl2_backup\ubuntu20-04.tar`

O comando acima irá criar um arquivo comprimido da nossa distribuição no caminho que especificamos.

**Observação:**

O diretório **wsl2_backup** precisa ser criado antes de executar o comando.

## Importando uma distribuição

**Sintaxe:**

`wsl --import <Nome da distribuição> <Diretório onde queremos colocar arquivo importado> <Diretório do arquivo exportado>`

**Exemplo:**

`wsl --import Ubuntu C:\Wsl2 C:\wsl2_backup\ubuntu20-04.tar`

O comando acima irá importar o arquivo ubuntu20-04.tar para o diretório C:\wsl2.

**Observação:**

Não coloque o nome de uma distribuição que já exista no seu sistema.

## Excluindo uma distribuição

**Sintaxe:**

`wsl --unregister <Nome da distribuição>`

**Exemplo:**

`wsl --unregister Ubuntu-20.04`