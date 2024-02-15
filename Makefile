include srcs/.env

COMPOSE	= docker compose -f
COMPOSE_SRC = srcs/docker-compose.yml

all: volumes
	$(COMPOSE) $(COMPOSE_SRC) up -d --build

up: volumes
	$(COMPOSE) $(COMPOSE_SRC) up -d

down:
	$(COMPOSE) $(COMPOSE_SRC) down

prune:
	$(COMPOSE) $(COMPOSE_SRC) stop
	docker system prune -af;
	docker volume prune -af;

volumes:
	mkdir -p /home/aascedu/data/mariadb
	mkdir -p /home/aascedu/data/wordpress

clean:
	$(COMPOSE) $(COMPOSE_SRC) down --volumes --rmi all
	rm -rf /home/aascedu/data/mariadb /home/aascedu/data/wordpress

.PHONY: all volumes clean up down
