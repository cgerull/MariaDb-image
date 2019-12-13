FROM mariadb:10.4

# Get password from cmdline
ARG root_password=P@ssw0rd
ENV MYSQL_ROOT_PASSWORD=$root_password

EXPOSE 3306
VOLUME /var/lib/mysql

HEALTHCHECK CMD mysqladmin status -u root -p$MYSQL_ROOT_PASSWORD
