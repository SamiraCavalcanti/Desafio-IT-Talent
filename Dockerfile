# Use a imagem oficial do MySQL
FROM mysql:latest

# Copie o arquivo dump.sql para a pasta /docker-entrypoint-initdb.d/ para que o MySQL o execute ao iniciar
COPY scripts/dump.sql /docker-entrypoint-initdb.d/

# Exponha a porta 3306
EXPOSE 3306
