#!/usr/bin/env sh

if [ -z "$BASE_IMAGE" ]
then
  echo "\033[0;34mMissing BASE_IMAGE\033[0m"
else
  docker build --compress -f $DOCKERFILE -t $IMAGE_NAME \
    --build-arg BASE_IMAGE=$BASE_IMAGE .
fi
