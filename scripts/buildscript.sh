##!/bin/bash -xe
IMAGE_TAG="$(date +%Y-%m-%d.%H.%M.%S).$(echo $CODEBUILD_RESOLVED_SOURCE_VERSION | head -c 8)"  

