FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive

# Actualiza ubuntu, instala todas las dependencias para apache2

RUN apt-get update && apt-get install -y \
    curl \
    git \
    build-essential \
    apache2 \ 
    mysql-server \
    phpmyadmin

EXPOSE 80 3306
 
RUN mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld && chmod 755 /var/run/mysqld

COPY ./apache2.conf /etc/apache2/apache2.conf
COPY ./start.sh /start.sh
COPY ./init.sql /docker-entrypoint-initdb.d/init.sql
RUN chmod +x /start.sh

COPY ./config-db.php /etc/phpmyadmin/config-db.php

WORKDIR /

CMD ["/start.sh"]










