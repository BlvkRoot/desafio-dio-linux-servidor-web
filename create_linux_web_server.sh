#!/bin/bash
echo "Atualizando repositorios e Servidor!"

apt update -y
apt upgrade -y

echo "Servidor Atualizado!"

echo "--------------------------------------"

echo "Instalando Servidor Apache"

apt install apache2 -y

echo "Servidor Apache instalado!"

echo "--------------------------------------"

echo "Instalando Unzip"

apt install unzip -y

echo "Unzip instalado"

echo "--------------------------------------"

echo "Baixar aplicação no github"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Extraindo ficheiros do main.zip"

unzip main.zip

echo "Copiar ficheiros do /main para /var/www/html"

cp ./linux-site-dio-main/* -R /var/www/html

echo "Ficheiros copiados para /var/www/html"
