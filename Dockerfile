# Use a imagem base oficial do MySQL 8.0
FROM mysql:8.0

# Copie um arquivo de configuração personalizado para o contêiner
COPY /config/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

# Expõe a porta padrão do MySQL
EXPOSE 3306

# Defina as variáveis de ambiente
ENV MYSQL_ROOT_PASSWORD=${DATABASE_PASSWORD}
ENV MYSQL_DATABASE=${DATABASE_NAME}
ENV MYSQL_USER=${DATABASE_USERNAME}
ENV MYSQL_PASSWORD=${DATABASE_PASSWORD}

# Crie um volume para armazenar os dados do MySQL
VOLUME /var/lib/mysql

# Comando para iniciar o servidor MySQL
CMD ["mysqld"]