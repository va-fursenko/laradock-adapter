#!/usr/bin/env bash
docker-compose exec --user laradock workspace bash -c 'composer global require --prefer-dist "fxp/composer-asset-plugin:~1.1.3" && composer intall && php artisan key:generate'