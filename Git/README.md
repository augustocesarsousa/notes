# Git

O Git é um SCM (Source Control Management), foi criado por Linus Torvalds que também é o criador do kernel Linux, atualmente é o SCM mais utilizado mundialmente, aqui veremos suas principais funções.

## Site oficial

[https://git-scm.com/](https://git-scm.com/)

## Instalação

**Observação:**

Procedimentos realizados no Ubuntu na versão 22.04, para fazer a instalação em outros sistemas, consultar o site oficial.

Executar o comando abaixo:

```
sudo apt install git
```

## Verificando versão instalada

```
git --version
```

## Configurando usuário e email

Para que o Git possa saber quem está fazendo as alterações nos arquivos, precisamos configurar nosso usuário e email, utilizamos os dois comandos abaixo:

```
git config --global user.name "nome do usuário"
git config --global user.email "email do usuário"
```

## Iniciando um repositório Git

Para que o Git possa começar a gerenciar os arquivos do projeto, precisamos iniciá-lo na pasta raiz do projeto executando o comando abaixo:

```
git init
```

## Verificando o status do repositório

O Git nos da opção de visualizar a situação do repositório, para isso utilizamos o comando `git status`, ele nos permite ver os status dos arquivos e outras situações.

## Adicionando arquivo para a área da Tracked (monitoramento)

Após iniciado o gerenciamento do Git no projeto, ele irá listar todos os arquivos como **Untracked** (não monitorados), precisamos então informar para o Git quais arquivos queremos que ele gerencia, isso pode ser feito de três formas:

1. Adicionando um arquivo;

```
git add teste.txt
```

2. Adicionando vários arquivos;

```
git add teste.txt teste2.txt teste3.txt
```

3. Adicionando todos os arquivos.

```
git add .
```

## Ignorando arquivos

Caso exista um arquivo/pasta onde não queremos que o Git gerêncie, podemos informá-lo para ignorá-los, fazemos isso informando-os em um arquivo **.gitignore**.

**Exemplos:**

Executando o comando abaixo na raiz do projeto, informamos ao Git pra ignorar o arquivo **teste.txt**:

```
echo "teste.txt" >> .gitignore
```

Se quisermos que ele ignore uma pasta, informamos ela dentro do arquivo .gitignore:

```
echo "/pasta_teste" >> .gitignore
```

Para ignorar arquivos pela extensão, utilizamos um asterisco (\*) e depois a extensão do arquivo:

```
echo "*.mp4" >> .gitignore
```

Se quisermos que ele ignore um arquivo ou pasta, mas não sabemos onde ele esta dentro dos diretórios, utilizamos dois asteriscos (\*\*) antes do nome:

```
echo "**teste2.txt" >> .gitignore
```

## Executando um commit

Um commit é quando enviamos os arquivos modificados para a área de **stage** do Git, de modo mais prático funciona como uma "foto" do estado do arquivo na hora que o commit foi feito, para realizar um commit os arquivos precisam estar na área de **tracked**, também podemos passar uma messagem do que foi modificado no commit, utilizando o prefixo **-m**.

**Exemplo**

```
git commit -m "mensagem do commit"
```

Todo commit criado gera um código de identificação também conhecido como **hash**, utilizaremos ele mais a frente.

## Verificando históricos de commits (log)

O Git nos permite visualizar todo o historico de commits de um repositório, para isso utilizamos o comando abaixo:

```
git log
```

Com esse comando o Git irá listar todos o commits realizados, quando a quantidade de commits for maior que o tamanho da tela no fim da página irá aparecer o símbolo de dois ponto ( : ), para descer a ver os outros commits basta pressionar a **seta para baixo** e para sair da visualização pressione a tecla **q**.
