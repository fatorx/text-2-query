ENV_FILE=".env"

sed -i 's/^DOCKER_FILE=.*$/DOCKER_FILE=Dockerfile/' "$ENV_FILE"

docker compose down
docker compose up -d --build
docker exec -it api pip install transformers torch
docker exec -it api pip uninstall spacy thinc -y
docker exec -it api pip install spacy thinc

# Commit the updates of the container
container_id=$(docker ps -q --filter "name=api")

if [ -n "$container_id" ]; then
    echo "Container ID for 'api': $container_id"
    docker commit $container_id api_snapshot:latest

    # shellcheck disable=SC2181
    if [ $? -eq 0 ]; then
        echo "Image 'api_snapshot:latest' created."
    else
        echo "Docker commit failed."
    fi
else
    echo "No running container found with the name 'api'."
    exit 0
fi

if [ ! -f "$ENV_FILE" ]; then
  echo "The .env file does not exist."
  exit 1
fi

# Update DOCKER_FILE in docker-compose.yaml
sed -i 's/^DOCKER_FILE=.*$/DOCKER_FILE=dev.Dockerfile/' "$ENV_FILE"

if grep -q '^DOCKER_FILE=dev.Dockerfile' "$ENV_FILE"; then
  echo "DOCKER_FILE has been updated to dev.Dockerfile"
else
  echo "Failed to update DOCKER_FILE"
fi

docker compose down
docker compose up -d --build