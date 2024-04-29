FROM debian:11
RUN apt-get update -y \
	apt-get install -y curl php php-mysql php-fpm \
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	chmod +x wp-cli.phar \
	mv wp-cli.phar /usr/local/bin/wp 
#install curl

CMD ["sleep", "infinity"]