#!/usr/bin/env bash
echo "Installing  Apache and setting it up..."

# Intallar dependencias, confirmando com yes!
yum install -y httpd >/dev/null 2>&1
cp -r /vagrant/html/* var/www/html/