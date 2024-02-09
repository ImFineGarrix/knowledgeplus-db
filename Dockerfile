# Dockerfile.mysql

FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=cp23sj2

# Copy the initialization script into the container
COPY 01_init.sql /docker-entrypoint-initdb.d/01_init.sql
COPY 02_init.sql /docker-entrypoint-initdb.d/02_init.sql

EXPOSE 3306
