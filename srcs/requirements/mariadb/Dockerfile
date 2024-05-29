FROM debian:11
RUN apt-get update -y && apt-get upgrade -y &&\
	apt-get install -y mariadb-server
COPY tools/startup.sh /startup.sh
COPY 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod +x /startup.sh
CMD ["./startup.sh"]