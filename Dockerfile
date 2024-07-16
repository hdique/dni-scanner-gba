FROM php:7.4-apache

# Actualizar los paquetes del sistema y limpiar la caché
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
  php-mysqli \
  libpng-dev \
  libjpeg-dev \
  libfreetype6-dev \
  && docker-php-ext-configure gd --with-freetype --with-jpeg \
  && docker-php-ext-install gd \
  && rm -rf /var/lib/apt/lists/*

# Copiar el código de la aplicación
COPY /src /var/www/html

# Configurar permisos adecuados
RUN chown -R www-data:www-data /var/www/html

# Exponer el puerto 80
EXPOSE 80

# Ejecutar el contenedor como un usuario no root
USER www-data