FROM php:7.4-apache
RUN apt-get update && apt-get install -y curl mysql* &&  apt-get install mariadb-server &&  apt-get install mariadb-client
RUN docker-php-ext-install mysqli
