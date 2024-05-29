#!/bin/bash

service mariadb start
sleep 2
echo "create database if not exists $DB_NAME;" | mariadb
echo "create user if not exists '$USER' identified by '$PASSWORD';" | mariadb
echo "grant all privileges on $DB_NAME.* to '$USER' identified by '$PASSWORD';" | mariadb
echo "flush privileges;" | mariadb
service mariadb stop
exec mariadbd
