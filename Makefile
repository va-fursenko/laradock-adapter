.PHONY: start stop restart shell logs rebuild init update phpunit

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

phpunit:
	@bash scripts/phpunit.sh