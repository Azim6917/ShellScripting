DC := docker-compose

OS := $(shell uname)

build:
	$(DC) build

up:
	$(DC) up -d

down:
	$(DC) down

clean:
	docker system prune -y

status:
	docker ps


