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

Para que o Git possa saber quem está fazendo as alterações nos arquivos, precisamos configurar nosso usuário e email, isso pode ser feito draíse forma global, ou seja, todos os repositórios usarão essa configuração, ou pode ser feito por projeto, vejamos os exemplos:

- Configurando nome do usuário globalmente;

  ```
  git config --global user.name "nome do usuário"
  ```

- Configurando nome do usuário dentro de um projeto (precisa estar dentro da pasta raiz do projeto);

  ```
  git config user.name "nome do usuário"
  ```

- Configurando email do usuário globalmente;

  ```
  git config --global user.email "email do usuário"
  ```

- Configurando email do usuário dentro de um projeto (precisa estar dentro da pasta raiz do projeto);
  ```
  git config user.email "email do usuário"
  ```

## Iniciando um repositório Git

Para que o Git possa começar a gerenciar os arquivos do projeto, precisamos iniciá-lo na pasta raiz do projeto executando o comando abaixo:

```
git init
```

## Verificando o status do repositório

O Git nos da opção de visualizar a situação do repositório, para isso utilizamos o comando **status**, ele nos permite ver os status dos arquivos e outras situações, exemplo:

```
git status
```

## Configurando repositório remoto

O Git nos permite trabalhar com repositórios remoto, abaixo veremos como fazer as configurações.

### Visualizando repositório remoto

Para visualizar o repositório remoto, utilizamos o comando **remote**, mais a opção **-v**, exemplo:

```
git remote -v
```

### Adicionando repositório remoto

Para adicionar um repositório remoto, utilizamos os comandos **remote add origin**, e passamos o endereço do repositório que queremos adicionar, no exemplo abaixo vamos adicionar um repositório do **Github**:

```
git remote add origin https://github.com/nome_do_usuario/nome_do_repositorio.git
```

### Alterando repositório remoto

Para alterar um repositório remoto, utilizamos os comandos **remote set-url**, e passamos o repositório que queremos mudar, exemplo:

```
git remote set-url origin https://github.com/nome_do_usuario/nome_do_novo_repositorio.git
```

### Deletando repositório remoto

Para deletar um repositório remoto, utilizamos os comandos **remote remove origin**, exemplo:

```
git remote remove origin
```

## Adicionando arquivo para a área da Tracked (monitoramento)

Após iniciado o gerenciamento do Git no projeto, ele irá listar todos os arquivos como **Untracked** (não monitorados), precisamos então informar para o Git quais arquivos queremos que ele gerencie, isso pode ser feito de três formas:

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

Caso exista um arquivo/pasta onde não queremos que o Git gerencie, podemos informá-lo para ignorá-los, fazemos isso informando-os em um arquivo **.gitignore**.

**Exemplos:**

Executando o comando abaixo na raiz do projeto, informamos ao Git para ignorar o arquivo **teste.txt**:

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

Se quisermos que ele ignore um arquivo ou pasta, mas não sabemos onde ele está dentro dos diretórios, utilizamos dois asteriscos (\*\*) antes do nome:

```
echo "**teste2.txt" >> .gitignore
```

## Executando um commit

Um commit é quando enviamos os arquivos modificados para a área de **stage** do Git, de modo mais prático funciona como uma "foto" do estado do arquivo na hora que o commit foi feito, para realizar um commit os arquivos precisam estar na área de **tracked**, também podemos passar uma mensagem do que foi modificado no commit, utilizando o prefixo **-m**.

**Exemplo**

```
git commit -m "mensagem do commit"
```

Todo commit criado gera um código de identificação também conhecido como **hash**, utilizaremos ele mais à frente.

## Verificando históricos de commits (log)

O Git nos permite visualizar todo o histórico de commits de um repositório, para isso utilizamos o comando abaixo:

```
git log
```

Com esse comando o Git irá listar todos o commits realizados, exibindo o hash, autor, data e a mensagem, quando a quantidade de commits for maior que o tamanho da tela no fim da página irá aparecer o símbolo de dois pontos ( : ), para descer a ver os outros commits basta pressionar a **seta para baixo** e para sair da visualização pressione a tecla **q**.

### Pesquisando texto nas mensagens

Podemos fazer pesquisas nas mensagens, para isso devemos substituir o símbolo de dois pontos no fim da página ( : ), por uma barra ( / ) e em seguida passamos o texto que queremos pesquisar, exemplo:

```
/mensagem teste
```

### Quantidade de retorno do log

Podemos limitar a quantidade de retorno dos logs, para isso utilizamos a opção ( **-** ) mais a quantidade que queremos retornar, exemplo:

Retornando os últimos 5 commits:

```
git log -5
```

### Log resumido

Podemos resumir a forma de retorno do log, basta adicionar a opção **--oneline**, exemplo:

```
git log --oneline
```

Também podemos limitar a quantidade de retorno do log resumido, exemplo:

```
git log --oneline -3
```

### Pesquisando log por data

O Git nos permite fazer pesquisas de log por data, vamos ver os exemplos abaixo:

- Pesquisando após 01-01-2023:

  ```
  git log --after="2023-1-1"
  ```

- Pesquisando antes de 01-01-2023:

  ```
  git log --before="2023-1-1"
  ```

- Pesquisando desde 01-01-2023:

  ```
  git log --since="2023-1-1"
  ```

- Pesquisando até 01-01-2023:

  ```
  git log --until="2023-1-1"
  ```

- Pesquisando entre 01-01-2023 e 01-02-2023:

  ```
  git log --since="2023-1-1 --until="2023-2-1"
  ```

- Pesquisando desde duas semanas atrás:

  ```
  git log --since="2 weeks ago"
  ```

- Pesquisando até cinco dias atrás:
  ```
  git log --since="five days ago"
  ```

### Pesquisando log por autor

O Git nos permite pesquisar log pelo autor dos commits utilizando a opção **--author**, exemplo:

```
git log --author="Augusto"
```

## Voltando para um commit

O Git nos permite voltar para um commit para podermos verificar como estava nosso projeto naquele determinado commit, para isso utilizamos o comando **checkout** mais os sete primeiros caracteres do hash do commit, exemplo:

Voltando para o commit **2a76dea**;

```
git checkout 2a76dea
```

Para voltarmos ao commit principal, utilizamos a opção **checkout** mais a **branch** em que estamos trabalhando, exemplo:

Voltando para o commit principal da **branch main**:

```
git checkout main
```

## Renomeando arquivos pelo Git

O Git nos permite renomear arquivos e diretórios diretamente por ele, para isso utilizamos o comando **mv**, depois passamos o nome do arquivo ou diretório que queremos renomear e por fim o novo nome, exemplos:

```
git mv teste.txt teste_renomeado.txt
```

```
git mv ./pasta_teste ./pasta_teste_renomeada
```

**Observação**

Ao renomear um arquivo ou pasta pelo Git o mesmo já fica disponível para executar um commit, quando renomeamos arquivos ou pastas por outras formas, o Git entende que o arquivo ou pasta foi **deletado** e outro foi **criado**, sendo necessário adicioná-los para área de **tracked**, e então, realizar o commit.

## Deletando arquivos pelo Git

Para deletar um arquivo ou pasta pelo Git, utilizamos o comando **rm** e passamos o que queremos deletar, exemplo:

```
git rm teste2.txt
```

```
git rm ./pasta_teste2
```

**Observação**

Assim como renomeando pelo Git, quando se deleta algo por ele, o arquivo ou pasta já ficará pronto para a realização do commit.

## Diferença entre commits

Podemos ver a diferença entre commits utilizando a opção **diff**, ela nos permite comparar commits de várias formas, vejamos abaixo:

- Diferença entre o estado atual e o último commit;

  ```
  git diff --staged
  ```

- Diferença entre o estado atual e outro commit;

  ```
  git diff 2a76dea
  ```

- Diferença entre dois commits.
  ```
  git diff 2a76dea..bdfb153
  ```
  **Observação**: o commit mais antigo vem primeiro.

## Corrigindo mensagem do último commit

Para corrigir a mensagem do último commit, realizamos um novo commit porém passamos a opção **--amend** e passamos a nova mensagem que o Git irá substituir a mensagem do commit anterior,exemplo:

```
git commit --amend -m "Nova mensagem"
```

## Removendo arquivo do stage

Caso queira remover um arquivo que está pronto para ser submetido (commit), o git nos permite removê-lo utilizando a opção **restore** mais a opção **--staged**, exemplo:

```
git restore --staged teste.txt
```

## Desfazendo alteração em um arquivo

Para desfazer as alterações de um arquivo, utilizamos o comando **checkout**, mais o nome do arquivo que queremos desfazer a alteração, exemplo:

```
git checkout teste2.txt
```

## Desfazendo alteração em todos os arquivos

Para desfazer as alterações de todos os arquivos, utilizamos o comando **reset** mais a opção **HEAD** para retornar ao estado original do commit e a opção **--hard** para sobrescrever os arquivos, exemplo:

```
git reset HEAD --hard
```

## Desfazendo commit

Para desfazer um commit, utilizamos o comando **reset** mais a opção **HEAD** e suas variações, exemplos:

- Desfazendo o último commit, mas mantendo os arquivos alterados;

  ```
  git reset HEAD^ ou git reset HEAD~1
  ```

- Desfazendo o último commit e as alterações nos arquivos;

  ```
  git reset HEAD^ --hard
  ```

- Desfazendo mais de um commit ao mesmo tempo.
  ```
  git reset HEAD~3
  ```

## Criando nova branch

Para criar uma nova branch, utilizamos o comando **branch** e depois informamos o nome da branch que queremos criar, exemplo:

```
git branch novabranch
```

**Observação**

Sempre utilize nomes que condizem ao que a branch se refere, exemplo, ao criar uma branch para uma nova funcionalidade, utilize o nome dela para nomear a branch.

## Listando branches existentes

Para listar todas as branches existentes no projeto, basta utilizarmos o comando `git branch`, o Git irá mostrar todas as brnches existentes no momento e marcará com um asterisco ( \* ), a branch que está sendo usada no momento.

## Alternando entre branches

Para alternar em branches, utilizamos o comando **checkout** mais o nome da branch que deseja mudar, exemplo:

```
git checkout novabranch
```

## Deletando uma branch

Para deletar uma branch utilizamos o comando **branch** com a opção **-d** e passamos o nome da branch que queremos deletar, exemplo:

```
git branch -d novabranch
```

## Realizando merge

Para realizar um merge, estando na branch principal utilizamos o comando **merge**, mais o nome da branch que queremos juntar, exemplo:

```
git merge branchmerge
```

## Realizando rebase

Para realizar um rebase, estando na branch principal utilizamos o comando **rebase**, mais o nome da branch que queremos juntar, exemplo:

```
git merge branchrebase
```

## Clonando repositório

Para clonar um repositório, utilizamos o comando **clone**, mais o endereço onde o repositório está, esse repositório pode ser local ou remoto, exemplos:

- Clonando de um repositório local;

  ```
  git clone /home/usuario/Downloads/repositorio-local
  ```

- Clonando de um repositório remoto (Github).
  ```
  git clone https://github.com/usuario/repositorio-remoto.git
  ```

## Realizando um push

Para enviar os commits realizados no nosso repositório para o repositório de origem, precisamos utilizar o comando **push**, exemplo:

```
git push
```

**Observação**

O repositório de origem precisa ser do tipo **base repository** para que ele possa aceitar o envio dos commits.

## Realizando fetch

Para baixar as atualizações do repositório de origem, utilizamos o comando **fetch**, porém esse comando não faz o **merge** das atualizações, sendo necessário a realização de um **rebase**, exemplo:

```
git fetch
git rebase
```

## Realizando pull

Assim como o comando **fetch**, o comando **pull** também baixa as atualizações do repositório de origem, porém ele já faz o **merge** dos commits, descartando a necessidade de realizar um **rebase**, exemplo:

```
git pull
```

## Bare Repository

Bare Repository são repositórios centrais que aceitam commits de outros usuários, um exemplo é o Github, para criar um repositório do tipo **bare**, utilizamos o comando **init**, mais a opção **--bare**, exemplo:

```
git init --bare
```

## Tags

Tags são estados de um repositório que não pode receber mais commits, ele é muito utilizado quando queremos criar uma versão estável do projeto, exemplo uma versão **1.0**. Para criar uma tag utilizamos o comando **tag** mais o nome que queremos dar para ela, exemplo:

```
git tag v1.0
```

### Enviando uma tag para o repositório origem

Ao criarmos uma tag no repositório local, precisamos enviá-la para o repositório origem, para isso utilizamos os comandos **push**, mais **origin**, e por fim o nome da tag criada, exemplo:

```
git push origin v1.0
```

### Alternando para uma tag

Para alternar para uma tag, utilizamos o comando **checkout**, mais o nome da tag que queremos acessar, exemplo:

```
git checkout v1.0
```

Lembrando que quando estamos em uma tag, não podemos efetuar commits.

## Baixando pull request

Quando recebemos um pull request em nosso repositório, o correto é baixarmos e testá-lo antes de fazer o aceite ou recusa, no comando abaixo vamos simular o download de pull request **#3** já criando uma branch **analise_pr3**:

```
git fetch origin pull/3/head:analise_pr3
```

No comando acima utilizamos o comando **fetch** para baixar os arquivos sem fazer o **merge** com a branch atual, depois informamos a origem com o comando **origin**, informamos que a origem é do **pull**, número **3**, e, em seguida criamos a branch **analise_pr3** com o comando **head:analise_pr3**.

Após executado o comando acima, precisamos mudar para a nova branch utilizando o comando abaixo, para fazer os testes e por fim aceitar ou recusar o pull request:

```
git checkout analise_pr3
```
