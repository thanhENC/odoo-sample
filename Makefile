compose-up:
	@docker compose up -d
	@docker ps

compose-down:
	@docker compose down
	@docker ps

clean: compose-down
	@docker system prune -f
	@docker volume prune -f
	@docker network prune -f
	@docker image prune -f

help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  compose-up    Start the docker-compose services"
	@echo "  compose-down  Stop the docker-compose services"
	@echo "  clean         Stop the docker-compose services and remove all containers, networks, volumes and images"
	@echo "  help          Show this help message"