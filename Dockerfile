FROM php:8.2-apache

# Install required system dependencies
RUN apt-get update && \
    apt-get install -y \
        libzip-dev \
        libicu-dev \
        libpng-dev \
        libjpeg-dev \
        libgmp-dev \
        libssl-dev \
        libc-client-dev \
        libkrb5-dev

# Install PHP extensions
RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl && \
    docker-php-ext-install mysqli imap gd zip

# Clear package lists to reduce image size
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Enable Apache modules
RUN a2enmod rewrite

# Restart Apache
RUN service apache2 restart

