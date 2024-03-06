#!/bin/sh

docker compose -f services/database/docker-compose.yml up -d --remove-orphans
docker compose -f services/database/docker-compose.yml logs

docker compose -f services/kafka/docker-compose.yml up -d --remove-orphans
docker compose -f services/kafka/docker-compose.yml logs

docker compose -f apps/backend/docker-compose.yml up -d --remove-orphans
docker compose -f apps/backend/docker-compose.yml logs

docker compose -f apps/frontend/docker-compose.yml up -d --remove-orphans
docker compose -f apps/frontend/docker-compose.yml up

sleep 5s

echo "docker ps"
docker ps