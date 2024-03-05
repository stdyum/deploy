#!/bin/sh

chmod +x scripts/*.sh
chmod +x *.sh

./scripts/docker.setup.sh
./scripts/repositories.load.sh
./scripts/build.sh
./scripts/env.setup.sh
