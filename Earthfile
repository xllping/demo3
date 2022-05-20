VERSION 0.6
FROM maven:3.8.5-openjdk-11
WORKDIR /java-example

build:
    COPY pom.xml ./
    COPY setting-aliyun-s.xml ./
    COPY src src
    #COPY /mnt/mvn-cache-rep/settings.xml ./
    #RUN mvn -X package -s ./setting-aliyun-s.xml  -Dmaven.test.skip=true
    #RUN mvn package -Dmaven.test.skip=true
    RUN pwd
    RUN ls -alth ./
    #SAVE ARTIFACT target/ /target AS LOCAL /target
    #SAVE ARTIFACT  target/ AS LOCAL /target
    SAVE ARTIFACT  setting-aliyun-s.xml /setting-aliyun-s.xml # AS LOCAL ./target/setting-aliyun-s.xml
