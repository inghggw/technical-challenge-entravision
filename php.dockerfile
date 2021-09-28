FROM php:7.4-fpm

WORKDIR /var/www/

RUN apt-get update && apt-get install -y \
    build-essential \
    libzip-dev \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libonig-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    git \
    curl

RUN docker-php-ext-install pdo_mysql zip exif pcntl
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install gd
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

COPY ./src/ /var/www/
WORKDIR /var/www/tracking-api

RUN chmod -R 777 storage/

EXPOSE 9000

CMD ["php-fpm"]
