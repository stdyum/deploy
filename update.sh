#!/bin/sh

pwd=$(pwd)
echo $pwd

cd $pwd/apps/$1/$2 && git pull && docker build -t studyum-$2 -f deploy/Dockerfile .
cd "$pwd/apps/$1" && docker-compose stop $2 &&  docker-compose up -d --no-deps $2
