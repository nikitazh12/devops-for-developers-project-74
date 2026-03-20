start:
	make env
	docker compose up

build:
	make env
	docker compose -f docker-compose.yml build app

push:
	docker compose -f docker-compose.yml push app

ci:
	make env
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

env:
	cp app/.env.example .env