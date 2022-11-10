#! /bin/bash

cd /

#Atualizando servidor
echo "Atualizando servidor..."
apt-get update
apt-get upgrade -y

#baixando web servidor apache2 e  desconpactador Unzip
echo "Baixando servidor web Apache2 e desconpactador Unzip..."
apt-get install apache2 -y
apt-get instal unzip -y

#Atualizando servidor
echo "Atualizando servidor..."
apt-get update
apt-get upgrade -y

#Verificando disponibilidade do servidor web
echo "Verificando disponibilidade do servidor web Apache2"
systemctl status apache2

#Baixando arquivos da aplicação
echo "Baixando arquivos da aplicação web..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

#desconpactando a pasta main.zip
echo "Desconpactando a pasta main.zip..."
unzip main.zip

#Copiando os arquivos da aplicação web para a pasta padrao do servidor web Apache2 
echo "Copiando os arquivos da aplicação web para a pasta padrao do servidor web Apache2..." 
cp -r linux-site-dio-main/* /var/www/html/

#Outras formas de copiar os arquivos do site para pasta padrao do Apache2:
#cp -r main.zip /var/www/html/
#cd /var/www/html/
#cp -r */* ./  


  


