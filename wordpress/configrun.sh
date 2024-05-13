#!/bin/bash
sleep 10
cd /var/www/html
wp core download --allow-root
wp config create --dbhost=mariadb  --dbname=melmars --dbuser=Mourad --dbpass=1234 --allow-root
wp core install --url=localhost --title="MyWordPress" --admin_user=mel-mars --admin_password=1234 --admin_email=mel-mars@student.1337.ma --allow-root
wp user create user1 mourad7elmarssi@gmail.com --user_pass=1234 --allow-root
exec php-fpm7.4 -F