#!/bin/bash

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $SSL_CERTIFICATE_KEY -out $SSL_CERTIFICATE -subj "/C=MA/ST=Rehamna/L=Benguerir/O=UM6P/CN=mel-mars.42.fr" > dev/null 2>&1
sed -i 's|${SSL_CERTIFICATE}|'"$SSL_CERTIFICATE"'|g; s|${SSL_CERTIFICATE_KEY}|'"$SSL_CERTIFICATE_KEY"'|g' /etc/nginx/sites-enabled/nginx.conf
exec nginx -g 'daemon off;'