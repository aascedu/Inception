#!bin/bash

if [ ! -d "/run/php" ]; then
    mkdir -p /run/php
fi

if [ ! -f "/var/www/html/wp-config.php" ]; then

wp core download --path=/var/www/html \
                 --allow-root

wp config create	--allow-root \
                    --dbname=$SQL_DATABASE \
                    --dbuser=$SQL_USER \
                    --dbpass=$SQL_PASSWORD \
                    --dbhost=mariadb:3306 \
                    --path=/var/www/html

wp core install     --allow-root \
                    --url=aascedu.42.fr \
                    --admin_user=$SQL_USER \
                    --admin_password=$SQL_PASSWORD \
                    --admin_email=aascedu@student.42lyon.fr \
                    --title=Inception \
                    --path=/var/www/html
fi

/usr/sbin/php-fpm7.4 -F