VERSION 0.6
FROM maven:3.8.5-openjdk-11
WORKDIR /java-example

build:
    COPY pom.xml ./
    COPY src src
    #COPY /mnt/mvn-cache-rep/settings.xml ./
    #RUN mvn package -s ./settings.xml -Dmaven.test.skip=true
    RUN mvn package -Dmaven.test.skip=true
    RUN pwd
    RUN ls -alth ./target
    #SAVE ARTIFACT target/ /target AS LOCAL /target
    SAVE ARTIFACT  target/demo3-0.0.1-SNAPSHOT.jar AS LOCAL /workspace/demo3-0.0.1-SNAPSHOT.jar
