#!/bin/sh

if [ ! -z "$1" ]; then
    ./scripts/build-image.sh "apps/$1"
    exit 0
fi

if [ ! -d "apps/backend" ]; then
    echo "Directory backend does not exist."
    exit 1
fi

if [ ! -d "apps/frontend" ]; then
    echo "Directory frontend does not exist."
    exit 1
fi

for folder in "apps/backend"/*; do
    if [ -d "$folder/deploy" ]; then
        ./scripts/build-image.sh $folder
    fi
done


for folder in "apps/frontend"/*; do
    if [ -d "$folder/deploy" ]; then
        ./scripts/build-image.sh $folder
    fi
done
