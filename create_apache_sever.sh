#!/bin/bash

#Atualizar servidor linux#
echo "Atualizando servidor, por favor aguarde ... "

apt update -y
apt upgrade -y

echo "Servidor atualizado."




echo "Instalando Apache, por favor aguarde ... "

apt install apache2 -y

echo "Apache instalado."




echo "Instalando unzip, por favor aguarde ... "

apt install unzip -y

echo "Unzip instalado."




echo "Fazendo download da aplicação do repositorio no GitHb ... "

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Download concluído"




echo "Extraindo arquivos ... "

cd tmp/
unzip /tmp/main.zip

echo "Arquivos extraídos. "




echo "Copiando aquivos da aplicação no diretório padrão do apache ... "

rm /var/www/html/index.html
cp -R /tmp/linux-site-dio-main/ /var/www/html/

echo "Arquivos copiados. "




echo "Executando site. "

cat /var/www/html/linux-site-dio-main/index.html