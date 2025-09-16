#!/bin/bash
sudo apt-get update
sudo apt-get install -y mysql-server
sudo sed -i "s/^bind-address\s*=.*/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf
sudo systemctl restart mysql

sudo mysql -u root -e "CREATE USER 'markino'@'%' IDENTIFIED BY 'root';"
sudo mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'markino'@'%' WITH GRANT OPTION;"
sudo mysql -u root -e "FLUSH PRIVILEGES;"

echo "Configurazione andata a buon fine"