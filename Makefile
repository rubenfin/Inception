.PHONY: all build up down ps clean fclean re

all: build up

build:
	@echo "$(GREEN)Building docker!$(DEFAULT)"
	@docker-compose build

up:
	@echo "$(GREEN)Running docker!$(DEFAULT)"
	@docker-compose -p inception up -d --build

down:
	@echo "$(YELLOW)Stop running docker!$(DEFAULT)"
	@docker-compose down

ps:
	@docker-compose ps

clean: down
	@echo "$(RED)Cleaning docker!$(DEFAULT)"
	@docker-compose down --volumes --remove-orphans
	@docker image prune -f
	
fclean: clean

re: fclean all

RED = \033[1;31m
GREEN = \033[1;32m
YELLOW = \033[1;33m
DEFAULT = \033[0m