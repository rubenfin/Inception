.PHONY: all build up down ps clean re


build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

ps:
	docker-compose ps

clean: down
	docker system prune -a

re: clean all