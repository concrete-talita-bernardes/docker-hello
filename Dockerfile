FROM debian
MAINTAINER Talita Bernardes - Concrete

RUN apt-get update && apt-get install -y apache2
COPY index.html /var/www/html


ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
