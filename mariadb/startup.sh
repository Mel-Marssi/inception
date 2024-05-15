#!/bin/bash
service mariadb start
echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" | mariadb
echo "CREATE USER IF NOT EXISTS '$USER'@'%' IDENTIFIED BY '$PASSWORD';" | mariadb
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$USER'@'%' IDENTIFIED BY '$PASSWORD';" | mariadb
echo "FLUSH PRIVILEGES;" | mariadb
service mariadb stop
exec mysqld_safe