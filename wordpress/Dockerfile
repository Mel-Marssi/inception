FROM debian:11
RUN apt-get update -y &&\
	apt-get install -y curl php7.4 php7.4-mysql php7.4-curl php7.4-fpm  mariadb-client

RUN	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

RUN mkdir -p /run/php
RUN	chmod +x wp-cli.phar 
RUN	mv wp-cli.phar /usr/local/bin/wp
RUN sed -i 's|listen = /run/php/php7.4-fpm.sock|listen = wordpress:9000|' etc/php/7.4/fpm/pool.d/www.conf
COPY configrun.sh configrun.sh
RUN chmod +x configrun.sh
RUN mkdir -p /var/www/html
RUN chmod -R 777 /var/www/html
# RUN wp user create mel-mars mel-mars@student.1337.ma --user_pass=1234 --allow-root
CMD ["./configrun.sh"]