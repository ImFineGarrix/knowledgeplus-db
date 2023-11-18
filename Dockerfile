# Dockerfile.mysql

FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=cp23sj2
ENV MYSQL_DATABASE=int371

COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
