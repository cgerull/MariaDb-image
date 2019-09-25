FROM mariadb:10.4

HEALTHCHECK CMD mysqladmin status -u root -p$MYSQL_ROOT_PASSWORD
