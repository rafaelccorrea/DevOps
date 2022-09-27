#!/usr/bin/env bash
echo "Installing  Apache and setting it up..."

# Intallar dependencias, confirmando com yes!
yum install -y httpd >/dev/null 2>&1
#copiando para o diretorio padrão do apache... 
cp -r /vagrant/html/* var/www/html/
#subir apache
service httpd start