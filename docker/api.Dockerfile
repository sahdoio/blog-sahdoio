FROM php:8.2.7-fpm

WORKDIR /var/www

RUN apt-get update && apt-get -f -y install build-essential unzip wget

RUN apt-get install -y \
   libpng-dev \
   libjpeg62-turbo-dev \
   libfreetype6-dev \
   libzip-dev \
   locales \
   locales-all \
   zip \
   vim \
   unzip \
   git \
   curl

RUN apt-get install -y \
   libmcrypt-dev \
   freetds-bin \
   freetds-dev \
   freetds-common \
   libxml2-dev \
   libxslt-dev \
   libaio1 \
   libmcrypt-dev \
   libreadline-dev

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install \
   pdo_mysql \
   gd \
   zip \
   calendar \
   exif \
   gettext \
   pcntl mysqli \
   shmop \
   soap bcmath \
   sockets \
   sysvmsg \
   sysvsem \
   sysvshm \
   xsl \
   opcache

RUN pecl install mongodb && docker-php-ext-enable mongodb

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ENV LC_ALL pt_BR.UTF-8
ENV LANG pt_BR.UTF-8
ENV LANGUAGE pt_BR.UTF-8

ADD . /var/www

RUN chown -R www-data:www-data /var/www
