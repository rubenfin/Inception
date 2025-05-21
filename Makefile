.PHONY: build run stop clean

# Variables
IMAGE_NAME = my-web-app
CONTAINER_NAME = web
PORT = 8080:80

# Build the Docker image
build:
	docker build -t $(IMAGE_NAME) .

# Run a container from the image
run:
	docker run -d -p $(PORT) --name $(CONTAINER_NAME) $(IMAGE_NAME)

# Stop the running container
stop:
	docker stop $(CONTAINER_NAME)

# Remove the container
rm:
	docker rm $(CONTAINER_NAME)

# Stop and remove the container
clean: stop rm

# Rebuild the image and restart the container
restart: clean build run

# Show container logs
logs:
	docker logs $(CONTAINER_NAME)

# Enter the container shell
shell:
	docker exec -it $(CONTAINER_NAME) sh

# For Docker Compose
up:
	docker-compose up -d

# Stop Docker Compose services
down:
	docker-compose down

# Show Docker Compose logs
compose-logs:
	docker-compose logs