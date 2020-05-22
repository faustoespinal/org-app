#!/bin/bash
IMAGE_TAG="$(date +%Y-%m-%d.%H.%M.%S).$(echo $CODEBUILD_RESOLVED_SOURCE_VERSION | head -c 8)"  
echo $IMAGE_TAG
docker build -t $REPOSITORY_URI:$IMAGE_TAG .
docker tag $REPOSITORY_URI:$IMAGE_TAG $REPOSITORY_URI:$IMAGE_TAG
docker push $REPOSITORY_URI:$IMAGE_TAG
