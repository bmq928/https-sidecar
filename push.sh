#!/bin/bash
image_name=$1
builder_name='multi-arch'
docker buildx create --bootstrap --name ${builder_name} --use
trap 'docker buildx rm -f ${builder_name}' EXIT
docker buildx build --platform linux/amd64,linux/arm64 \
  --force-rm \
  --rm \
  --no-cache \
  --quiet \
  --compress \
  --tag ${image_name} \
  --file Dockerfile \
  --push \
  .