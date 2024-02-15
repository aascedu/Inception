FROM debian:11

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get install mariadb-server -y

ARG SQL_DATABASE
ARG SQL_ROOT_PASSWORD
ARG SQL_USER
ARG SQL_PASSWORD

RUN export SQL_DATABASE=SQL_DATABASE && \
    export SQL_ROOT_PASSWORD=SQL_ROOT_PASSWORD && \
    export SQL_USER=SQL_USER && \
    export SQL_PASSWORD=SQL_PASSWORD


COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/mysql_script.sh /etc/mysql/mysql_script.sh
RUN chmod 777 /etc/mysql/mysql_script.sh
CMD ["sh", "/etc/mysql/mysql_script.sh"]