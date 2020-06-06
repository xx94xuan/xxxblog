#!/usr/bin/env sh

if $FORCE_BUILD = "true"
then
  echo "forcing build"
  docker build --no-cache -f $DOCKERFILE -t $TAG .
else
  docker build --compress -f $DOCKERFILE -t $TAG .
fi
