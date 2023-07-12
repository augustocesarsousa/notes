# Lamp

Instalação feita no Ubuntu 22.04

Intalando a versão mais recente

```
sudo apt update
sudo apt install lamp-server^ -y
```

Dando permissão para a pasta **www**

```
sudo chmod -R 777 /var/www/
```

Adicionado senha no usuário **root** do MySql

```
sudo mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
```

Arquivo para ver a versão do PHP instalada, link de acesso http://localhost/info.php

```
echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/info.php
```

## Comandos Lamp

Iniciar o serviço

```
sudo /etc/init.d/apache2 start
```

Reiniciar o serviço

```
sudo /etc/init.d/apache2 restart
```

Parar o serviço

```
sudo /etc/init.d/apache2 stop
```
