docker exec -it api pip install transformers torch

container_id=$(docker ps -q --filter "name=api")

if [ -n "$container_id" ]; then
    echo "Container ID for 'api': $container_id"

    # Create a commit of the container
    docker commit $container_id api_snapshot:latest

    if [ $? -eq 0 ]; then
        echo "Docker commit successful. Image 'api_snapshot:latest' created."
    else
        echo "Docker commit failed."
    fi
else
    echo "No running container found with the name 'api'."
fi

ENV_FILE=".env"

if [ ! -f "$ENV_FILE" ]; then
  echo "The .env file does not exist."
  exit 1
fi

sed -i 's/^DOCKER_FILE=.*$/DOCKER_FILE=dev.Dockerfile/' "$ENV_FILE"

if grep -q '^DOCKER_FILE=dev.Dockerfile' "$ENV_FILE"; then
  echo "DOCKER_FILE has been updated to dev.Dockerfile"
else
  echo "Failed to update DOCKER_FILE"
fi

docker compose down
docker compose up -d --build