#!/usr/bin/env bash
docker-compose up -d nginx postgres redis php-fpm
# docker-compose -f ./docker-compose.yml