#!/bin/bash
sleep 5
cd /var/www/html
wp core download --allow-root
wp config create --dbhost=$DB_HOST  --dbname=$DB_NAME --dbuser=$USER --dbpass=$PASSWORD --allow-root
wp core install --url=$DOMAIN_NAME --title="MyWordPress" --admin_user=$WP_ADMIN --admin_password=$PASSWORD --admin_email=$WP_ADMIN_MAIL --allow-root
wp user create $USER2 $MAIL_USER2 --user_pass=$PASSWORD --allow-root
exec php-fpm7.4 -F