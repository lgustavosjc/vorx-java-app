#!/bin/bash
echo "********************"
echo "** Pushing image ***"
echo "********************"
IMAGE="maven-project"
echo "** Logging in ***"
docker login -u lgustavosjc -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG lgustavosjc/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push lgustavosjc/$IMAGE:$BUILD_TAG
