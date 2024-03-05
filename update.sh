#!/bin/sh

pwd=$(pwd)
echo $pwd

cd $pwd/apps/$1/$2 && git pull && docker build -t studyum-$2 -f deploy/Dockerfile .
cd "$pwd/apps/$1" && docker compose stop && docker compose start
