#!/bin/sh

docker compose -f services/database/docker-compose.yml up -d --remove-orphans
docker compose -f services/kafka/docker-compose.yml up -d --remove-orphans

echo "kafka and database were started, waiting for 30 seconds"
sleep 30s

docker compose -f apps/backend/docker-compose.yml up -d --remove-orphans

echo "backend was started, waiting for 30 seconds"
sleep 30s

docker compose -f apps/frontend/docker-compose.yml up -d --remove-orphans

echo "frontend was started, waiting for 30 seconds"
sleep 30s

echo "docker ps"
docker ps