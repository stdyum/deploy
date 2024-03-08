#!/bin/sh

docker compose -f apps/frontend/docker-compose.yml down

docker compose -f apps/backend/docker-compose.yml down

docker compose -f services/kafka/docker-compose.yml down
docker compose -f services/database/docker-compose.yml down
