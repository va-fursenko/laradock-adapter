#!/usr/bin/env bash
# Удаляем runtime
sudo systemctl stop docker
sudo rm -Rf /var/lib/docker 
sudo systemctl start docker
# Удаляем контейнеры
docker rm -v -f $(docker ps -a -q)
# Пересобираем
docker-compose build --no-cache --force-rm --pull nginx workspace php-fpm selenium