#!/bin/bash

echo "Atualizando servidor..."
apt-get update
apt-get upgrade -y
agt-get install apache2 -y
agt-get install unzip -y

echo "Baixando e copiando os arquivos..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -r * /var/www/html/