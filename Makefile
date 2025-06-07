.PHONY: all
all: update down up

.PHONY: update
update:
	@echo "Update"
	git pull
	git submodule update --remote

.PHONY: up
up:
	@echo "Build & Up"
	docker compose -p resume up -d --build

.PHONY: down
down:
	@echo "Down"
	docker compose -p resume down