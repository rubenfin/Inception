FROM debian:bullseye

COPY mariadb.sh /usr/local/bin/mariadb.sh
RUN chmod +x /usr/local/bin/mariadb.sh

RUN /usr/local/bin/mariadb.sh

EXPOSE 3306

