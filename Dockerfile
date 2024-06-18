FROM mysql:latest


ENV $(shell . /app/.env)


RUN mkdir -p /docker-entrypoint-initdb.d

COPY scripts/dump.sql /docker-entrypoint-initdb.d/

CMD ["mysqld"] 

