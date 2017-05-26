#!/usr/bin/env bash
docker-compose exec --user laradock workspace bash -c 'php dusk.php && exit'