#!/usr/bin/env bash
docker-compose exec --user laradock workspace bash
##!/bin/sh
#docker exec -it --user laradock $(docker-compose ps | grep _workspace_ | cut -d" " -f 1) sh
