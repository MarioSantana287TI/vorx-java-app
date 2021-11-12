#!/bin/bash
echo "********************"
echo "** Pushing image ***"
echo "********************"
IMAGE="maven-project"
echo "** Logging in ***"
docker login -u mariosantana287ti -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG mariosantana287ti/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push mariosantana287ti/$IMAGE:$BUILD_TAG
