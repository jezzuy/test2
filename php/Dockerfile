FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    zlib1g-dev g++ git libicu-dev zip libzip-dev zip \
    libcurl4-openssl-dev \
    libssl-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libxml2-dev \
    libonig-dev \
    libzip-dev \
    libc-client-dev \
    libkrb5-dev \
    && docker-php-ext-install intl opcache pdo pdo_mysql mysqli curl zip mbstring iconv imap gd zip

# Enable additional PHP extensions
RUN docker-php-ext-enable opcache mysqli curl zip mbstring iconv imap gd zip

# Install APCu
RUN pecl install apcu && docker-php-ext-enable apcu

# Enable Apache's mod_rewrite
RUN a2enmod rewrite

# Set up Composer
WORKDIR /var/www/project
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Symfony CLI
RUN curl -sS https://get.symfony.com/cli/installer | bash
RUN mv /root/.symfony5/bin/symfony /usr/local/bin/symfony
