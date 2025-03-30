#!/bin/bash

echo "Atualizando o servidor..."

apt update
apt upgrade -y

echo "Instalando o Apache2..."

apt install apache2 -y

echo "Instalando o unzip..."

apt install unzip -y

echo "Acessando pasta, baixando main.zip, descompactando e copiando para /var/www/html"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Fim!"

