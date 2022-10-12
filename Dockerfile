FROM php:7.4-fpm-alpine3.15
LABEL maintainer="bravoheavy@gmail.com"

RUN apk add --no-cache \
        libjpeg-turbo-dev \
        libpng-dev \
        libwebp-dev \
        freetype-dev \
        libzip-dev \
        libxml2-dev \
        icu-dev \
        gettext-dev \
        libxslt-dev  && \
        docker-php-ext-install pdo_mysql && \
        docker-php-ext-install mysqli && \
        docker-php-ext-install gd && \
        docker-php-ext-install gettext && \
        docker-php-ext-install zip && \
        docker-php-ext-install json && \
        docker-php-ext-install xsl

COPY uploads.ini /usr/local/etc/php/conf.d/uploads.ini
