
# Docker
.env:
	cp -n .env-example $@

up:
	docker compose up -d

build:
	docker compose build

build-up: build up

down:
	docker-compose down

#migrate:
	#docker-compose exec app uv run \
	#python -m manage migrate

make setup:
	$(MAKE) .env
	$(MAKE) build-up
	#$(MAKE) migrate


