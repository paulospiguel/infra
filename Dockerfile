# Use a imagem base oficial do MySQL 8.0
FROM mysql:8.0

# Copie um arquivo de configuração personalizado para o contêiner
COPY /config/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf

# Expõe a porta padrão do MySQL
EXPOSE 3306

# Defina as variáveis de ambiente
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}
ENV MYSQL_DATABASE=${MYSQL_DATABASE}
ENV MYSQL_USER=${MYSQL_USER}
ENV MYSQL_PASSWORD=${MYSQL_PASSWORD}

# Crie um volume para armazenar os dados do MySQL
VOLUME /var/lib/mysql

# Comando para iniciar o servidor MySQL
CMD ["mysqld"]