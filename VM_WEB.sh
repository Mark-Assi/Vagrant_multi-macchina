#!/bin/bash
sudo apt-get update
sudo apt-get install -y apache2 php libapache2-mod-php
sudo apt install -y adminer
sudo a2enconf adminer 
sudo systemctl restart apache2

echo "Configurazione andata a buon fine"