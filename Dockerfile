FROM mariadb:10.4

# Create an admin user so we don't have to use root
COPY scripts/create_user.sql /docker-entrypoint-initdb.d/

HEALTHCHECK CMD mysqladmin status -u root -p$MYSQL_ROOT_PASSWORD
