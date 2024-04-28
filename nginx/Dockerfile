# Use the Debian-based Nginx image from Docker Hub
FROM debian:11

# Install necessary packages
RUN apt-get update && \
    apt-get install -y nginx openssl xdg-utils

# Create a directory for SSL certificates
RUN mkdir /etc/nginx/ssl

# Generate a self-signed SSL certificate
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/nginx.key -out /etc/nginx/ssl/nginx.crt -subj "/C=MA/ST=Rehamna/L=Benguerir/O=UM6P/CN=localhost"

# Remove the default Nginx configuration file
RUN rm /etc/nginx/sites-enabled/default

# Copy our Nginx configuration file into the container
COPY nginx.conf /etc/nginx/sites-enabled/

# Expose ports 80 and 443
EXPOSE 80 443

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
