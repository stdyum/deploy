#!/bin/sh

folder=$1
echo "Building image for folder $folder"

image_name="studyum-${folder##*/}"
echo "Image name: $image_name"

cd $folder
echo $PWD

docker build -t $image_name -f deploy/Dockerfile .

