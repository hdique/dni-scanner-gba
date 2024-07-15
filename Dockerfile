FROM php:7.4-apache

# WORKDIR /app

COPY /src /var/www/html

EXPOSE 80

# CMD ["php-fpm", "-i", "-d", "display_errors=On"]