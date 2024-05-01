FROM debian:11
RUN apt-get update -y && apt-get upgrade -y &&\
	apt-get install -y mariadb-server &&\
	apt-get install -y systemctl
COPY startup.sh /startup.sh
RUN chmod +x /startup.sh
RUN ./startup.sh
CMD ["sleep", "infinity"]