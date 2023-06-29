#!/bin/sh -l

REGISTRY=$1
PROJECT_ID=$2
IMAGE_NAME=$3

echo "[GCR DELETE] REGISTRY: $1"
echo "[GCR DELETE] PROJECT_ID: $2"
echo "[GCR DELETE] IMAGE_NAME: $3"

while true; do
  echo "\n"
  DIGEST=$(gcloud container images list-tags $REGISTRY/$PROJECT_ID/$IMAGE_NAME --filter='-tags:*' --format="get(digest)" --limit 1)
  if [ "$DIGEST" = "" ]; then
    echo "No digests to delete. Stopping..."
    break
  fi
  gcloud container images delete $REGISTRY/$PROJECT_ID/$IMAGE_NAME@$DIGEST --force-delete-tags --quiet
  echo "Digest $DIGEST deleted with success!"
done
