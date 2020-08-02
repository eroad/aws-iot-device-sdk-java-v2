#!/bin/bash -e

cd aws-crt-java/android
./gradlew publishToMavenLocal
./gradlew publishReleasePublicationToMavenRepository
cd ../aws-iot-device-sdk-java-v2/android
./gradlew publishToMavenLocal
./gradlew publishReleasePublicationToMavenRepository