FROM debian:11
RUN apt-get update -y &&\
	apt-get install -y curl php7.4 php7.4-mysql php7.4-curl php7.4-fpm  mariadb-client

RUN	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

RUN mkdir -p /run/php; chmod +x wp-cli.phar; mv wp-cli.phar /usr/local/bin/wp
RUN sed -i 's|listen = /run/php/php7.4-fpm.sock|listen = wordpress:9000|' etc/php/7.4/fpm/pool.d/www.conf
COPY tools/configrun.sh configrun.sh
RUN chmod +x configrun.sh; mkdir -p /var/www/html; chmod -R 777 /var/www/html; rm -rf wp-config.php
CMD ["./configrun.sh"]