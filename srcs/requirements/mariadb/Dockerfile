FROM debian:bullseye

RUN apt update \
    && apt install -y mariadb-server \
    && apt clean

COPY mariadb.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/mariadb.sh
RUN ./usr/local/bin/mariadb.sh

