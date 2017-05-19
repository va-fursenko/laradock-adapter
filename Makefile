.PHONY: start stop restart shell logs rebuild init update dbdump dbrestore

start:
	@bash scripts/start.sh

stop:
	@bash scripts/stop.sh

restart:
	@bash scripts/stop.sh
	@bash scripts/start.sh

shell:
	@bash scripts/shell.sh

logs:
	@bash scripts/logs.sh

rebuild:
	@bash scripts/stop.sh
	@bash scripts/rebuild.sh
	@bash scripts/init.sh

init:
	@bash scripts/init.sh

update:
	@bash scripts/update.sh

dbdump:
	@bash scripts/pg-dump.sh

dbrestore:
	@bash scripts/pg-restore.sh