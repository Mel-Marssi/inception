#!/bin/bash
sleep 10
cd /var/www/html
wp core download --allow-root
wp config create --dbhost=$DB_HOST  --dbname=$DB_USER --dbuser=$USER --dbpass=$PASSWORD --allow-root
wp core install --url=mel-mars.42.fr --title="MyWordPress" --admin_user=$WP_ADMIN --admin_password=$PASSWORD --admin_email=$WP_ADMIN_MAIL --allow-root
wp user create user1 mourad7elmarssi@gmail.com --user_pass=$PASSWORD --allow-root
exec php-fpm7.4 -F