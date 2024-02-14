FROM debian:11

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y wget
RUN apt-get install -y php7.4 php-fpm php-mysql mariadb-client
RUN wget https://fr.wordpress.org/wordpress-6.4.2-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.4.2-fr_FR.tar.gz && rm wordpress-6.4.2-fr_FR.tar.gz
RUN chown -R root:root /var/www/wordpress
# RUN cp /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php

COPY conf/www.conf /etc/php/8.2/fpm/pool.d/www.conf

RUN wget https://github.com/wp-cli/wp-cli-bundle/releases/download/v2.7.0/wp-cli-2.7.0.phar && chmod +x wp-cli-2.7.0.phar && mv wp-cli-2.7.0.phar /usr/local/bin/wp 

COPY tools/script.sh /usr/local/bin/script_php.sh
RUN chmod +x /usr/local/bin/script_php.sh
CMD ["./usr/local/bin/script_php.sh"]