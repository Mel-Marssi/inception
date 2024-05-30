*****Knowledge of system administration by using Docker*****

This project involves setting up a small infrastructure composed of various services, each following specific rules.

Setup a containers of:
  -NGINX with TLSv1.2 or TLSv1.3.
  
  -MARIADB service.
  
  -Wordpress with PHP-FPM

Setup two volumes: one to link WordPress files to be served by the Nginx server, and the other to save MariaDB data on your host machine.

Setup a docker network that links between all the containers.

Finally a docker-compose that build and run all this infrastructure.
