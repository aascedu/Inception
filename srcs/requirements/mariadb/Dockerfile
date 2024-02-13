FROM debian:11

RUN apt-get -y update
RUN apt-get -y upgrade

RUN apt-get install mariadb-server -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/mysql_script.sh /etc/mysql/mysql_script.sh
RUN chmod 777 /etc/mysql/mysql_script.sh
CMD ["sh", "/etc/mysql/mysql_script.sh"]
