# Use PHP 8.2 with Apache
FROM php:8.4-apache

# Enable mod_rewrite
RUN a2enmod rewrite

# Copy app files
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Give proper permissions (optional)
RUN chown -R www-data:www-data /var/www/html

# Expose port 80
EXPOSE 80
