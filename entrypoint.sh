#!/bin/sh -l

PROJECT_ID=$1
IMAGE_NAME=$2

echo "[GCR DELETE] PROJECT_ID: $1"
echo "[GCR DELETE] IMAGE_NAME: $2"

while true; do
  echo "\n"
  DIGEST=$(gcloud container images list-tags gcr.io/$PROJECT_ID/$IMAGE_NAME --filter='-tags:*' --format="get(digest)" --limit 1)
  if [ "$DIGEST" = "" ]; then
    echo "No digests to delete. Stopping..."
    break
  fi
  gcloud container images delete gcr.io/$PROJECT_ID/$IMAGE_NAME@$DIGEST --force-delete-tags --quiet
  echo "Digest $DIGEST deleted with success!"
done
