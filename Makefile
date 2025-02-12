make setup:
	cp -n .env-example $@
	$(MAKE) build-up
	docker compose up --build -d


