up:
	docker compose -f srcs/docker-compose.yml  up --build
down:
	docker compose -f srcs/docker-compose.yml  down
remove:down
	docker compose -f srcs/docker-compose.yml  down --volumes --rmi all;
cache:
	docker system prune -a --volumes
	sudo -S rm -rf /home/mel-mars/data/wordpress/*
	sudo -S rm -rf /home/mel-mars/data/mariadb/*