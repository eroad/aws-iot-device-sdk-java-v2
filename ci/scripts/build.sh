#!/bin/bash -e

# Ignore errors when publishing to nexus, 
# in case one the two files exists already there

cd aws-crt-java/android
./gradlew publishToMavenLocal
./gradlew publishReleasePublicationToMavenRepository || true
cd ../../aws-iot-device-sdk-java-v2/android
./gradlew publishToMavenLocal
./gradlew publishReleasePublicationToMavenRepository || true