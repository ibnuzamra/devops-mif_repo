FROM php:8.2-fpm-alpine AS app

RUN apk add --no-cache nginx supervisor

COPY ./index.php /var/www/html/

COPY ./default.conf /etc/nginx/http.d/default.conf

COPY ./supervisord.conf /etc/supervisord.conf

EXPOSE 80

CMD ["supervisord", "-c", "/etc/supervisord.conf"]