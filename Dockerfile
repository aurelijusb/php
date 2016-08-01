FROM php:7.0.7-fpm

MAINTAINER Aurelijus Banelis <aurelijus@banelis.lt>

RUN apt-get update && \
    apt-get install -y \
        libfreetype6-dev \
        libgif-dev \
        libjpeg62-turbo-dev \
        libpng12-dev && \
    docker-php-ext-configure gd \
        --with-freetype-dir=/usr/include/ \
        --with-jpeg-dir=/usr/include/ \
        --with-png-dir=/usr/include/ && \
    docker-php-ext-install mbstring pdo_mysql gd calendar