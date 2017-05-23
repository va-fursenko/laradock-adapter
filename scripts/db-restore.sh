#!/usr/bin/env bash
SCRIPT_DIR=$(dirname $(readlink -f $0))
source "$SCRIPT_DIR/inc/pass.sh"
source "$SCRIPT_DIR/inc/backup-file.sh"

if [ ! -f $BACKUP_FILE ]; then
    echo "$BACKUP_FILE file not found!"
    exit
fi
cat $BACKUP_FILE | gunzip | docker exec -i $(docker-compose ps | grep _postgres_ | cut -d" " -f 1)  psql -U postgres -P $PASS -h localhost postgres