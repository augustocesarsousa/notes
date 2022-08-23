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

Após digitado o comando pressionamos a tecla **Enter**, será solicitado o **password** do usuário informado na conexão.

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
- Listando arquivos e diretórios dentro do diretório Documentos<br>
  `ls Documentos`
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
`nano /home/usuario/Documentos/teste.txt`

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

O comando **man** possui a mesma função do parâmetro **help**, porém ele apresenta as descrições em um formato de "manual" (utilize a tecla **q** para sair do modo de visualização).

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
  `cat /home/usuario/Documentos/teste.txt`

## Executando tarefas como administrador do sistema

### sudo

Por padrão os usuários comuns só podem executar tarefas dentro dos seus respectivos diretórios, para executar tarefas em outros diretórios ou tarefas administrativas do sistema devemos utilizar o comando **sudo** que permite executar tarefas com privilégios de administrador, quando utilizado o comando **sudo** exige a senha do usuário.

**Sintaxe**

- Lendo o conteúdo do arquivo **sudoers** dentro do diretório **/etc**<br>
  `sudo cat /etc/sudoers`

## Super usuário root

O super usuário **root** é o usuário administrador geral do sistema, ele não possui restrições de acesso, podendo fazer alterações em qualquer parte do sistema por isso o seu uso deve ser feito com muito cuidado.

### Definindo uma senha

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

## Consultando histórico de comandos

Para consultar o histórico de comandos no Linux, utilizamos o comando **history**, ele irá apresentar uma lista com os últimos 1000 comandos executados com um **ID** na frente.

**Sintaxe**

- Consultando todo o histórico de comandos<br>
  `history`
- Consultando os últimos 50 comandos<br>
  `history 50`
- Consultando os últimos comandos com o termo **nano**<br>
  `history | grep "nano"`
- Executando o comando 13<br>
  `!13`
- Executando o último comando<br>
  `!!`
- Executando o último comando que possuem o termo **nan**<br>
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

## Criando usuário

Para criar um usuário em um sistema Linux via terminal, utilizamos o comando **useradd** mais o nome do usuário para criá-lo, porem isso apenas cria um usuário em "branco", precisamos utilizar mais alguns parâmetros para criarmos um usuário completo, o primeiro parâmetro é o **-m**, ele informa que seja criado o diretório para esse usuário dentro do diretório **home**, o segundo parâmetro é o **-c**, ele permite que possa ser informado o nome completo para o usuário que queremos criar, o terceiro parâmetro é o **-s**, ele permite que possa ser informado o **Shell** padrão que o usuário irá usar, por ultimo temos o parâmetro -p para definir a senha do usuário, porém esse parâmetro exige que a senha informada já esteja **encriptada** mas podemos contornar essa questão utilizando o comando **openssl**.

**Sintaxe**

- Criando o usuário **joao**, definindo o nome completo como **João da Silva** e adicionando o **bash** como **Shell** padrão.<br>
  `sudo useradd joao -m -c "João da Silva" -s /bin/bash`
- Adicionando uma senha para o usuário **joao**<br>
  `sudo passwd joao`
- Criando o usuário **maria**, definindo o nome completo como **Maria da Silva** e adicionando o **bash** como **Shell** padrão e definindo a senha como **Maria123\***.<br>
  `sudo useradd maria -m -c "Maria da Silva" -s /bin/bash -p $(openssl passwd -crypt Maria123)`

## Editando usuário

Para editar um usuário em um sistema Linux via terminal, utilizamos o comando **usermod**, supondo que criamos o usuário **joao** mas esquecemos de definir o **Shell** padrão, podemos utilizar o **usermod** para fazer essa alteração.

**Sintaxe**

- Adicionando o **bash** ao usuário **joao**<br>
  `sudo usermod joao -s /bin/bash`
- Adicionando uma data de expiração ao usuário **joao**<br>
  `sudo usermod joao -e 31/12/2023`

## Adicionando, editando e removendo grupos ao usuário

Podemos difinir para qual grupo queremos colocar o usuário na hora da sua criação utilizando o parâmetro **-G** e informar um ou mais grupos ao qual queremos que ele pertença, para editar o grupo de um usuário utilizamos o comando **usermod** e também o parâmetro **-G**, para remover um grupo do usuário utilizamos o comando **gpasswd** junto ao parâmetro **-d**.

**Sintaxe**

- Criando o usuário **jose** e adicionando ele ao grupo **grupo1**<br>
  `sudo useradd jose -m -c "José da Silva" -s /bin/bash -p $(openssl passwd -crypt José123) -G grupo1`
- Adicionando mais grupos ao usuário **jose**<br>
  `sudo usermod -G grupo2,grupo3 jose`
- Removendo o grupo **grupo2** do usuário **jose**<br>
  `sudo gpasswd -d jose grupo2`

## Criando grupos de usuários

Para criar um grupo de usuário utilizamos o comando **groupadd**

**Sintaxe**

- Criando o grupo **grupo4**<br>
  `sudo groupadd grupo4`

## Deletando grupos de usuários

Para deletar um grupo de usuário utilizamos o comando **groupdel**, mas para deletar um grupo ele não pode ter nenhum usuário associado a ele.

**Sintaxe**

- Deletando o grupo **grupo4**<br>
  `sudo groupdel grupo4`

## Verificando as propriedades de um arquivo ou diretório

Para verificar as propriedades de um arquivo ou diretório podemos utilizar o comando **ls -l** ou abreviado **ll** no diretório onde o arquivo ou diretório que queremos analisar se encontra.

**Exemplo**

Executando o comando **ll** na diretório **/**, temos a seguinte saída:

```
lrwxrwxrwx   1 root root    7 Mar 24 18:40 bin -> usr/bin
drwxr-xr-x   2 root root 4.0K Mar 24 18:47 boot
drwxr-xr-x   9 root root 2.8K Aug 19 17:13 dev
drwxr-xr-x 131 root root  12K Aug 19 17:13 etc
drwxr-xr-x   4 root root 4.0K May  4 13:51 home
-rwxr-xr-x   3 root root 1.4M Jan 27  2022 init
lrwxrwxrwx   1 root root    7 Mar 24 18:40 lib -> usr/lib
lrwxrwxrwx   1 root root    9 Mar 24 18:40 lib32 -> usr/lib32
lrwxrwxrwx   1 root root    9 Mar 24 18:40 lib64 -> usr/lib64
lrwxrwxrwx   1 root root   10 Mar 24 18:40 libx32 -> usr/libx32
drwx------   2 root root  16K Apr 10  2019 lost+found
drwxr-xr-x   2 root root 4.0K Mar 24 18:40 media
drwxr-xr-x   6 root root 4.0K Aug  5 16:15 mnt
drwxr-xr-x   3 root root 4.0K May  3 17:21 opt
dr-xr-xr-x 155 root root    0 Aug 19 17:13 proc
drwx------   3 root root 4.0K Aug 17 18:32 root
drwxr-xr-x   6 root root  120 Aug 19 17:13 run
lrwxrwxrwx   1 root root    8 Mar 24 18:40 sbin -> usr/sbin
drwxr-xr-x   6 root root 4.0K Mar 24 18:42 snap
drwxr-xr-x   2 root root 4.0K Mar 24 18:40 srv
dr-xr-xr-x  11 root root    0 Aug 19 17:13 sys
drwxrwxrwt 113 root root  20K Aug 19 17:14 tmp
drwxr-xr-x  14 root root 4.0K Mar 24 18:41 usr
drwxr-xr-x  13 root root 4.0K Mar 24 18:42 var
```

Analisando a saída, acima cada linha representa um item dentro do diretório **/**, podemos dividir cada linha em sete colunas que juntas informam as propriedades dos itens, vamos analisar cada coluna da primeira linha:<br>

`lrwxrwxrwx 1 root root 7 Mar 24 18:40 bin -> usr/bin`

Na primeira coluna **lrwxrwxrwx**, o primeiro caractere **l** informa o tipo do item, no qual temos três opções:

- **l** para **links**
- **d** para **diretórios**
- **-** para **arquirvos**

Depois do primeiro caractere temos três conjuntos representados pelos caracteres **rwx**, que informam as permissões dos items, o primeiro representa as permissões do **proprietário** do item, o segundo representa as permissões do **grupo** do item e o terceiro representa as permissões dos outros usuários, cada um dos três caracteres representa um tipo de permissão conforme abaixo:

- **r** permite a leitura do item
- **w** permite a escrita/edição do item
- **x** permite a execução do item
- **-** representa a ausência da permissão

A segunda coluna **1** representa a quantidade de conteúdo que o item possui.
A terceira coluna **root** representa o proprietário do item.
A quarta coluna **root** representa o grupo do item.
A quinta coluna **7** representa o tamanho do item em **bytes**.
A sexta coluna **Mar 24 18:40** representa a data da última modificação do item.
E a sétima **bin -> usr/bin** coluna representa o nome do item (em caso de links, também é mostrado o caminho para onde ele leva).

## Alterando proprietário/grupo de um arquivo ou diretório

Para alterar proprietário/grupo de um arquivo ou diretório utilizamos o comando **chown** seguido do **novo proprietário** e o **novo grupo** que queremos alterar.

**Sintaxe**

- Alterando proprietário/grupo do arquivo **teste.txt** para proprietário **maria** e grupo **grupo1**<br>
  `sudo chown maria:grupo1 teste.txt`
- Alterando proprietário/grupo do diretório **Documentos** para proprietário **jose** e grupo **grupo2**<br>
  `sudo chown maria:grupo1 /Documentos/`

## Alterando permissões de um arquivo/diretório

Já sabemos como identificar quais permissões um arquivo/diretório possui, agora veremos como alterar essas permissões, para isso utilizamos o comando **chmod** seguido de **3 dígito** onde cada um é a soma do valor das permissões que queremos atribuir para cada tipo de usuário, e depois o arquivo/diretório que estamos alterando as permissões, abaixo uma tabela com os valores de cada permissão:

| permissão    | valor |
| ------------ | ----- |
| Leitura (r)  | 4     |
| Gravação (w) | 2     |
| Execução (x) | 1     |
| Nenhum (-)   | 0     |

**Sintaxe**

- Utilizando a tabela acima caso desejamos dar apenas a permissão de **gravação (2)** para o **proprietário** do arquivo/diretório, permissão de **leitura (4)** para o **grupo** onde o arquivo/diretório pertence e **nenhum (0)** para os **outros usuários** no arquivo **teste.txt** o comando ficaria assim<br>
  `sudo chmod 240 teste.txt`
- Alterando a permissão de **leitura (4)** mais **gravação (2)** para **todos os usuários** no diretório **Documentos**<br>
  `sudo chmod 666 /Documentos/`
- Liberando todas as permissões **(4+2+1)** para **todos os usuários** no arquivo **teste2.txt**<br>
  `sudo chmod 777 teste2.txt`

## Gerenciando pacotes

Para fazer o gerenciamento dos pacotes do sistema, podemos utilizar o comando **apt**:

**Sintaxe**

- Listando os pacotes disponíveis<br>
  `apt list`
- Listando os pacotes instalados<br>
  `apt list --installed`
- Listando os pacotes que podem ser atualizados<br>
  `apt list --upgradeable`
- Instalando o pacote **net-tools** (requer perfil de administrador)<br>
  `sudo apt install net-tools`
- Removendo o pacote **net-tools** (requer perfil de administrador)<br>
  `sudo apt remove net-tools`
- Adicionando repositório no **apt**<br>
  `sudo apt edit-sources`
- Instalando arquivos **.DEB**<br>
  `sudo apt install ./nome_do_arquivo.deb`

### Atualizando o sistema

**Sintaxe**

- Atualiando a lista de pacotes<br>
  `sudo apt update`
- Atualiando os pacotes<br>
  `sudo apt upgrade`

## Gerenciando discos

Os discos em sistemas Linux são representados pela sigla **sda** onde **a** informa a unidade do disco, exemplo, em caso de se pussior dois discos na máquina, eles iriam aparecer como **sda** e **sdb**, já as partições são identificadas por números, exemplo se o disco **sda** tiver duas partições dentro dele, elas serão representadas como **sda1** e **sda2**.

**Sintaxe**

- Listando discos existentes<br>
  `lsblk` ou `sudo fdisk -l`

### Adicioando um novo disco

Supondo que acabamos de adicionar um novo disco em branco ao sistema e ele foi identificado como **sdc**, precisamos então formatar esse disco para poder usá-lo.

**Sintaxe**

- Adicionando uma nova partição ao disco **sdc**<br>
  `sudo fdisk /dev/sdc`

O sistema irá solicitar uma opção, utilizaremos **n** para criar uma nova partição, depois utilizamos **p** para adicionar a partição como **primária**, depois utilizamos a opção **1** para informar o número da nova partição, depois informamos o valor do setor onde a nova partição irá iniciar e terminar, como iremos utilizar todo o disco utilizaremos os valores **default** propostos pelo sistema, por fim utilizamos **w** para confirmar as alterações.

- Formatando o disco **sdc**<br>
  `sudo mkfs.ext4 /dev/sdc`

- Montando o disco **sdc**<br>
  `sudo mkdir /mnt/sdc`
  `sudo mount /dev/sdc /mnt/sdc`

- Desmontando o disco **sdc**<br>
  `sudo umoubt /dev/sdc`

### Montando um disco novo automaticamente

Para montar um disco automaticamente, devemos editar o arquivo **fstab** que fica dentro do diretório **/etc**.

**Sintaxe**

`sudo nano fstab`

Depois informamos no fim do arquivo qual disco queremos montar, onde ele será montando e qual o sistema de arquivos.

**Sintaxe**

`/dev/sdc /disk3 ext4 defaults 0 0`

## Copiando arquivos/diretórios

Para copiar um arquivo/diretório utilizamos o comando **cp**, caso estejamos na raíz onde o arquivo/diretório se encontra basta, utilizamos **./nome_do_arquivo_ou_diretorio**, mas também podemos informar seu **diretório absoluto** e em seguida o diretório paraonde desejamos fazer a cópia. por padrão o comando **cp** não copia diretórios, para isso devemos utilizar o parâmetro **-r**.

**Sintaxe**

- Copiando o arquivo **teste.txt** do diretório **/home/usuario/Documentos** para o diretório **/home/usuario/Teste**<br>
  `cp /home/usuario/teste.txt /home/usuario/Teste`
- Copiando todos os arquivos com extenção **.txt** para o diretório **Teste**<br>
  `cp ./*.txt /home/usuario/Teste`
- Copiando todos os arquivos e diretórios do diretório **Documetos** para o diretório **Teste**<br>
  `cp -r ./* /home/usuario/Teste`
- Copiando todos os arquivos e diretórios do diretório **Documetos** para o diretório **Teste** e mostrando o que está sendo copiado<br>
  `cp -r -v ./* /home/usuario/Teste`
- Copiando todos os arquivos e diretórios do diretório **Documetos** para o diretório **Teste** e perguntando se deseja sobreescrever caso os arquivos já existam<br>
  `cp -r -i ./* /home/usuario/Teste`
