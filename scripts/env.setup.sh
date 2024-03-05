#!/bin/bash

files=("services/database/postgres/.env" "services/database/postgres/migrations/flyway.conf" "services/database/redis/.env" "services/database/scylla/.env" "services/database/scylla/cassandra-rackdc.properties" "services/database/scylla/scylla.yaml" "services/database/scylla/migrations/flyway.conf" "services/kafka/configs/kafka_server.conf" "services/kafka/configs/ui.yaml" "apps/backend/auth/.env" "apps/backend/studyplaces/.env" "apps/backend/types_registry/.env"  "apps/backend/schedule/.env"  "apps/frontend/web/.env")

for file in "${files[@]}"
do
  echo "Enter content for file: $file (press Control+D to finish input)"
  cat > "$file"
done
