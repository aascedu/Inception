FROM debian:bookworm

RUN apt -y update 
RUN apt -y upgrade 
RUN apt install -y nginx

RUN mkdir -p /etc/nginx/ssl
RUN apt install -y openssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/CN=aascedu.42.fr"

RUN mkdir -p /var/run/nginx
COPY conf/nginx.conf /etc/nginx/nginx.conf
