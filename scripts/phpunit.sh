#!/usr/bin/env bash
docker-compose up -d selenium
docker-compose exec --user laradock workspace bash -c './vendor/bin/phpunit && exit'