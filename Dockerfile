FROM ghcr.io/krkabol/php-fpm-noroot-socket:main@sha256:08706b27cc6adce77c2d82eaf740872c705fd14a4b31ef86955c1cdf35cb20a4
USER root

RUN  docker-php-ext-install intl opcache pdo pdo_mysql \
     && docker-php-ext-enable opcache
USER www
