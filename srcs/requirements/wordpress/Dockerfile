FROM debian:11

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y wget
RUN apt-get install -y php7.4 php-fpm php-mysql mariadb-client
RUN mkdir -p /var/www/html/ && chown -R root:root /var/www/html

RUN wget https://github.com/wp-cli/wp-cli-bundle/releases/download/v2.7.0/wp-cli-2.7.0.phar && \
    chmod +x wp-cli-2.7.0.phar && \
    mv wp-cli-2.7.0.phar /usr/local/bin/wp 

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY tools/script.sh /usr/local/bin/script_php.sh
RUN chmod +x /usr/local/bin/script_php.sh
CMD ["./usr/local/bin/script_php.sh"]