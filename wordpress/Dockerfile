FROM debian:11
RUN apt-get update -y &&\
	apt-get install -y curl php php-mysql php-fpm mariadb-client

RUN	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

RUN	chmod +x wp-cli.phar 

RUN	mv wp-cli.phar /usr/local/bin/wp

RUN wp core download --allow-root
RUN wp config create --dbname=melmars --dbuser=Mourad --dbpass=1234 --dbhost=mariadb --allow-root

CMD ["sleep", "infinity"]