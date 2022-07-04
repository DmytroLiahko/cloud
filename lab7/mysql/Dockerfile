FROM mysql

ENV MYSQL_DATABASE students
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_USER=wp_user
ENV MYSQL_PASSWORD=8sDg3$1jk

COPY ./scripts/ /docker-entrypoint-initdb.d/
