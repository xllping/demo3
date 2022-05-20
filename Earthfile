VERSION 0.6
FROM openjdk:11-jdk-alpine
RUN apk add --update --no-cache maven
WORKDIR /java-example

build:
    COPY pod.xml ./
    COPY src src
    COPY /mnt/mvn-cache-rep/settings.xml ./
    RUN mvn package -s ./settings.xml -Dmaven.test.skip=true
    SAVE ARTIFACT target/ /target AS LOCAL /mnt/workspace/tmp/target
