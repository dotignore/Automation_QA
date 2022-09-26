##############################################################
#
# SH RUNER
# docker build -t mysql_5:5.7.38 .
#
# docker images
#
# docker run --detach --name=mysql --publish 3307:3306 mysql_5:5.7.38
##############################################################

FROM mysql:5.7.38

# ....
MAINTAINER qwek@mail.com

# NAME DB, ROOT PASSWORD

ENV MYSQL_DATABASE=base \
    MYSQL_ROOT_PASSWORD=root
	

# needed for intialization
ADD localhost.sql /docker-entrypoint-initdb.d
# COPY  localhost.sql /docker-entrypoint-initdb.d

#PORT
EXPOSE 3307

