FROM debian:11

RUN apt-get update && \
    apt-get install -y nginx openssl 

RUN mkdir /etc/nginx/ssl

RUN rm /etc/nginx/sites-enabled/default
COPY nginx.conf /etc/nginx/sites-enabled/
RUN chmod 777 /etc/nginx/sites-enabled/nginx.conf

COPY Get_certif.sh Get_certif.sh
RUN chmod 777 Get_certif.sh

CMD ["./Get_certif.sh"]
