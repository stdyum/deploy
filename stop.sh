#!/bin/sh

docker compose -f apps/backend/docker-compose.yml stop

docker compose -f apps/frontend/docker-compose.yml stop

docker compose -f services/kafka/docker-compose.yml stop
docker compose -f services/database/docker-compose.yml stop
