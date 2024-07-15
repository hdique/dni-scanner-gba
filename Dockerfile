FROM php:7.4-fpm

WORKDIR /app

COPY html .

EXPOSE 9000

CMD ["php-fpm", "-i", "-d", "display_errors=On"]