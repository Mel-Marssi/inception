service mariadb start
sleep 5
mysql -e "CREATE DATABASE IF NOT EXISTS melmars;"
mysql -e "CREATE USER IF NOT EXISTS 'Mourad'@'%' IDENTIFIED BY '1234';"
mysql -e "GRANT ALL PRIVILEGES ON melmars.* TO 'Mourad'@'%' IDENTIFIED BY '1234';"
mysql -e "FLUSH PRIVILEGES;"
service mariadb restart
# exec mysqld_safe