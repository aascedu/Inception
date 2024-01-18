FROM debian:bookworm

RUN apt -y update
RUN apt -y upgrade

RUN apt install mariadb-server -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN export SQL_DATABASE=test
RUN export SQL_USER=test
RUN export SQL_PASSWORD=test
RUN export SQL_ROOT_PASSWORD=test

COPY tools/mysql_script.sh /etc/mysql/mysql_script.sh
RUN chmod 777 /etc/mysql/mysql_script.sh
CMD ["sh", "/etc/mysql/mysql_script.sh"]
