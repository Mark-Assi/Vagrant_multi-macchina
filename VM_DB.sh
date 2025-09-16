#!/bin/bash
sudo apt-get update
sudo apt-get install -y mysql-server
sudo systemctl enable mysql
sudo systemctl start mysql

sudo mysql -u root -e "CREATE USER 'markino'@'%' IDENTIFIED BY 'root';"
sudo mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'markino'@'%' WITH GRANT OPTION;"
sudo mysql -u root -e "FLUSH PRIVILEGES;"

echo "Configurazione andata a buon fine"