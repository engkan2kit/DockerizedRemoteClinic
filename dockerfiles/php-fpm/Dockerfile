FROM php:7.4-fpm
WORKDIR /var/

RUN apt update && apt install -y \
        libpq-dev zip unzip libzip-dev \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev libxml2-dev libcurl4-gnutls-dev


RUN docker-php-ext-install -j$(nproc) mysqli \
    && docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd && docker-php-ext-enable mysqli

RUN curl -sL https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
COPY composer.json ./
RUN composer install -o

WORKDIR /var/www/html
RUN ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini
RUN mkdir -p /usr/local/etc/php/conf.d/
RUN mkdir /srv/conf
RUN mkdir /srv/clinica
RUN chown -R www-data:www-data /srv/clinica