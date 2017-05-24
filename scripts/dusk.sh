#!/usr/bin/env bash
docker-compose up -d mariadb php-fpm selenium
docker-compose exec --user laradock workspace bash -c 'php artisan dusk && exit'