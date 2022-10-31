API_COMMAND := docker compose exec api

# Docker commands

up:
	docker compose up --build
upd:
	docker compose up --build -d
down:
	docker compose down
rebuild:
	docker compose down
	docker compose up --build
nuke:
	docker compose down
	docker system prune -f --all --volumes --filter=label=com.docker.compose.project=text-transformations-api
	docker compose up --build
.PHONY: up upd down rebuild nuke
