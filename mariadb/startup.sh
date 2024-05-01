
service mariadb start

mysql -u root -e "CREATE DATABASE IF NOT EXISTS melmars;"
mysql -u root -e "CREATE USER IF NOT EXISTS 'Mourad'@'localhost' IDENTIFIED BY '1234';"
mysql -u root -e "GRANT ALL PRIVILEGES ON melmars.* TO 'Mourad'@'localhost';"
mysql -u root -e "FLUSH PRIVILEGES;"

service mariadb stop
service mariadb start
