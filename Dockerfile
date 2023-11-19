FROM mysql:latest

RUN mkdir -p /docker-entrypoint-initdb.d

ADD *.dump /docker-entrypoint-initdb.d/
ADD show_elapsed.sql /docker-entrypoint-initdb.d/show_elapsed.hidden_sql
ADD employees.sql /docker-entrypoint-initdb.d/
ENV MYSQL_ROOT_PASSWORD=admin



EXPOSE 3306

RUN ls -l /docker-entrypoint-initdb.d
