# Linux

Aqui irei colocar as anotações referente aos estudos em Linux. O sistema utilizado foi o Ubuntu na versão 20.04 (LTS).

## Acessando remotamente uma máquina Linux

Para acessar remotamente uma máquina Linux, a máquina ou **Host** deve possuir o **openssh-server** instalado, para instalá-lo utilizamos o comando abaixo via terminal `sudo apt install openssh-server` (veremos mais sobre comandos de instalação a frente).
Devemos saber também o **IP** da máquina ao qual queremos acessar, para isso utilizamos o comando `ip a`.

### Acesso via Windows

Para acessar uma máquina Linux via Windows utilizamos o software **Putty**, com ele aberto inserimos o **IP** da máquina Linux que desejamos acessar no campo **Host Name** e clicamos no botão **Open**, será solicitado o **username** e **password** do usuário da máquina Linux.

### Acesso via Linux

Para acessar uma máquina Linux via Linux, utilizamos o **terminal**, com ele aberto utilizamos o comando **ssh** seguido do **username** e o **IP** da máquina que queremos acessar.

**Sintaxe**

`ssh usuario@192.0.1.100`

Após digitado o comando precionamos a tecla **Enter**, será solicitado o **password** do usuário informado na conexão.

### Acessando uma máquina Linux na nuvem (AWS)

Para acessar uma máquina Linux na AWS, é necessário possuir um par de chaves (**key pair**), vou deixar abaixo um link da própria AWS explicando como gerar as chaves e fazer uma conexão:

[Link](https://docs.aws.amazon.com/pt_br/opsworks/latest/userguide/workinginstances-ssh.html)

## Navegando pelo sistema de diretórios

### pwd

O comando **pwd** informa o diretório absoluto atual.

**Sintaxe**

`pwd`

### cd

O comando **cd** move para o diretório desejado

**Sintaxes**

- Indo para o diretório home<br>
  `cd /home`
- Voltando um diretório<br>
  `cd ..`
- Voltando um diretório e indo para o outro<br>
  `cd ../diretorio`

## Listando arquivos e diretórios

### ls

O comando **ls** lista arquivos e diretórios.

**Sintaxes**

- Listando arquivos e diretórios dentro do diretório atual<br>
  `ls`
- Listando arquivos e diretórios dentro do diretório Documents<br>
  `ls Documents`
- Listando arquivos e diretórios dentro do diretório atual onde a primeira letra do nome começa com **p**<br>
  `ls p*`
- Listando arquivos e diretórios dentro do diretório atual onde a primeira letra do nome começa com **m**, a segunda pode ser **qualquer** caractere, a terceira letra é igual à **g** e o restante pode ser qualquer outra cadeia de caracteres<br>
  `ls m?g*`
- Listando arquivos e diretórios dentro do diretório atual em forma de rolagem (Enter para descer e Ctrl + C para sair da visualização)<br>
  `ls | more`
- Listando arquivos e diretórios dentro do diretório atual onde o começo do nome é **teste** seguido dos caracteres de **2** até **4** e o restante **qualquer** cadeia de caracteres<br>
  `ls teste[2-4]*`
- Listando arquivos dentro do diretório atual onde o começo do nome é **teste** seguido dos caracteres de **3** e **4** e o restante **qualquer** cadeia de caracteres<br>
  `ls teste[3,4]*`
- Listando arquivos e diretórios dentro do diretório atual onde o começo do nome é **teste** excluindo em seguida os caracteres de **2** até **4** e o restante **qualquer** cadeia de caracteres<br>
  `ls teste[^2-4]*`
- Listando arquivos e diretórios dentro do diretório atual onde o começo do nome é **teste** excluindo em seguida os caracteres **3** e **4** e o restante **qualquer** cadeia de caracteres<br>
  `ls teste[^3,4]*`

## Localizando arquivos

### find

O comando **find** localiza arquivos e diretórios.

**Sintaxes**

- Localizando arquivos e diretórios onde o nome é igual a **teste**<br>
  `find -name "teste"`
- Localizando arquivos e diretórios onde o nome começa com **test** e o restante **qualquer** cadeia de caracteres<br>
  `find -name "test*"`

## Criando arquivos

### touch

O comando **touch** cria arquivos dentro do diretório atual.

**Sintaxes**

- Criando o arquivo **teste.txt**<br>
  `touch teste.txt`
- Criando os arquivos **teste2.txt** e **teste3.txt** ao mesmo tempo<br>
  `touch teste2.txt teste3.txt`

## Editando arquivos de texto

### nano

O **nano** é um editor de texto via **terminal**, com ele conseguimos fazer edições rápidas.

### Abrindo um documento

Para abrir um documento com o nano basta informar o nome do arquivo ou o caminho do diretório, caso o arquivo não exista o **nano** irá criá-lo.

**Sintaxe**

`nano teste.txt`<br>
`nano /home/usuario/Documents/teste.txt`

### Salvando um documento

Para salvar uma alteração em um documento utilizamos a tecla **Crtl esquerdo** + **O**

### Saindo de um documento

Para sair de um documento utilizamos a tecla **Crtl esquerdo** + **X**

## Criando diretórios

### mkdir

O comando **mkdir** cria diretórios.

**Sintaxes**

- Criando o diretório **Teste** dentro do diretório atual<br>
  `mkdir Teste`
- Criando o diretório **Teste2** dentro do diretório **Teste** a partir do diretório **raiz**<br>
  `mkdir /home/user/Teste/Teste2`
- Criando o diretório com espaço no nome **Teste M** dentro do diretório atual<br>
  `mkdir 'Teste M'`

## Excluindo arquivos e diretórios

### rmdir

O comando **rmdir** exclui diretórios caso esses estejam vazios.

**Sintaxe**

- Excluindo o diretório **Teste M**<br>
  `rmdir 'Teste M'`

### rm

O comando **rm** exclui arquivos e diretórios.

**Sintaxes**

- Excluindo o arquivo **teste.txt**<br>
  `rm teste.txt`
- Excluindo todos os arquivos com nome final **.txt**<br>
  `rm *.txt`
- Excluindo o diretório **Teste** que contém o diretório **Teste2** dentro dele<br>
  `rm -rf Teste`

## Obtendo ajuda

### --help

O parâmetro **--help** apresenta uma descrição do comando junto com uma lista de parâmetros e suas respectivas descrições, por se tratar de um parâmetro o **--help** deve ser usado junto à um comando.

**Sintaxe**

- Obtendo ajuda do comando **ls**<br>
  `ls --help`
- Obtendo ajuda do comando **rm**<br>
  `rm --help`
- Obtendo ajuda do comando **mkdir**<br>
  `mkdir --help`

### man

O comando **man** possui a mesma funcção do parâmetro **help**, porém ele apresenta as descrições em um formato de "manual" (utilize a tecla **q** para sair do modo de visualização).

**Sintaxe**

- Obtendo o manual do comando **ls**<br>
  `man ls`
- Obtendo o manual do comando **rm**<br>
  `man rm`
- Obtendo o manual do comando **mkdir**<br>
  `man mkdir`

## Lendo o conteúdo de um aquivo texto

### cat

O comando **cat** lê e exibe o conteúdo de um arquivo texto no terminal

**Sintaxe**

- Lendo o conteúdo do arquivo **teste.txt**<br>
  `cat teste.txt`
- Lendo o conteúdo do arquivo **teste.txt** utilizando o diretório absoluto<br>
  `cat /home/usuario/Documents/teste.txt`

## Executando tarefas como administrador do sistema

### sudo

Por padrão os usuários comuns só podem executar tarefas dentro dos seus respectivos diretórios, para executar tarefas em outros diretórios ou tarefas administrativas do sistema devemos utilizar o comando **sudo** que permite executar tarefas com previlégios de administrador, quando utilizado o comando **sudo** exige a senha do usuário.

**Sintaxe**

- Lendo o conteúdo do arquivo **sudoers** dentro do diretório **/etc**<br>
  `sudo cat /etc/sudoers`

## Super usuário root

O super usuário **root** é o usuário administrador geral do sistema, ele não possui restrições de acesso, podendo fazer alterações em qualquer parte do sistema por isso o seu uso deve ser feito com muito cuidado.

### Defininso uma senha

Por padrão no Ubuntu o **root** não possui uma senha mas não é uma boa prática deixa-lo sem senha, para isso utilizamos o comando **passwd**.<br>

**Sintaxe**

`sudo passwd root`<br>
Por ser um comando administrativo o **passwd** exige que usemos o **sudo** junto, após executa o sistema pedirá para digitar a nova senha do usuário **root**.

### Mudando para o usuário root

Para mudar do seu usuário **padrão** para o **root** utilizamos o comando **su**.

**Sintaxe**

`sudo su`

Para sair do usuário **root** utilizamos o comando **exit**.

**Sintaxe**

`exit`

## Liberando acesso remoto para o usuário root

O ideal para acessar uma máquina Linux diretamente com o usuário **root** é atrás de um **certificado** assim como é utilizado em um acesso à uma máquina na AWS, veremos como fazer isso posteriormente, nesse tópico veremos como liberar o acesso sem um **certificado**.
Para liberar o acesso remoto pelo usuário **root** devemos acessar o arquivo **sshd_config** com o **nano**.

**Sintaxe**

`sudo nano /etc/ssh/sshd_config`

Com o arquivo aberto alteremos a linha **#PermitionRootLogin prohibit-password** para **PermitionRootLogin yes**.
Após feita a alteração e salvado o arquivo temos duas opções, a primeira é reiniciar o sistema e a segunda é reiniciar o serviço **sshd**.

**Sintaxe**

- Reiniciando o sistema<br>
  `sudo reboot`
- Reiniciando o serviço **sshd**
  `sudo systemctl restart sshd`

Após esses procedimentos o acesso remoto via usuário **root** está liberado.

## Consultando hitórico de comandos

Para consultar o histórico de comandos no Linux, utilizamos o comando **history**, ele irá apresentar uma lista com os ultimos 1000 comandos executados com um **ID** na frente.

**Sintaxe**

- Consultando todo o histórico de comandos<br>
  `history`
- Consultando os últimos 50 comandos<br>
  `history 50`
- Consultando os ultimos comandos com o termo **nano**<br>
  `history | grep "nano"`
- Executando o comando 13<br>
  `!13`
- Executando o último comando<br>
  `!!`
- Executando o último comando que possuim o termo **nan**<br>
  `!?nan?`
- Limpando o history<br>
  `history -c`
- Impedindo que o history grave os comandos<br>
  `set +o history`
- Voltando ao padrão<br>
  `set -o history`
- Exportando o histórico para um arquivo de texto (será gerado o arquivo .bash_history na pasta raíz do usuário)<br>
  `history -w`

Ao executar os comandos acima, nota-se que o **history** apenas exibe o **ID** e o comando ao lado, mas se caso precisarmos saber a data e hora que o comando foi utilizado? Para isso precisamos exportar uma **variável de ambiente** que é responsável por definir a data e hora do **history**.

**Sintaxe**

`export HISTTIMEFORMAT="%c "`
