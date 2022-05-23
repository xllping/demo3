VERSION 0.6
FROM maven:3.8.5-openjdk-11
WORKDIR /java-example

build:
    COPY pom.xml ./
    COPY setting-aliyun-s.xml ./
    COPY src src
    COPY Dockerfile ./
    #COPY /mnt/mvn-cache-rep/settings.xml ./
    #RUN mvn package -s ./setting-aliyun-s.xml  -Dmaven.test.skip=true
    #RUN mvn package -Dmaven.test.skip=true
    RUN pwd
    RUN ls -alth ./
    #SAVE ARTIFACT target/ /target AS LOCAL /target
    #SAVE ARTIFACT  target/ AS LOCAL /target
    SAVE ARTIFACT  setting-aliyun-s.xml /setting-aliyun-s.xml # AS LOCAL ./target/setting-aliyun-s.xml
    SAVE ARTIFACT  Dockerfile /Dockerfile

docker:
    FROM DOCKERFILE -f +build/Dockerfile +build/*
    SAVE IMAGE --push --insecure 192.168.0.216:8888/library/demo3:latest
    # FROM 192.168.0.216:8888/library/jdk11:v1
    # WORKDIR /home/demo/
    # ENV RUN_ENV="dev"
    # ENV JAVA_OPTS=""
    # ENV SKYWALKING_AGENT=""
    # ENV JAVA_OPTS_INNER=" -XX:+UseContainerSupport -XX:MaxRAMPercentage=75.0 -XX:MinRAMPercentage=50.0 -XX:InitialRAMPercentage=50.0 -XX:+PrintCommandLineFlags "
    # ADD ./target/demo3-0.0.1-SNAPSHOT.jar app.jar
    # COPY +build/setting-aliyun-s.xml app.jar
    # ENTRYPOINT [ "sh", "-c", "java $SKYWALKING_AGENT $JAVA_OPTS_INNER $JAVA_OPTS -Dspring.profiles.active=${RUN_ENV} -jar app.jar" ]
    # COPY +build/setting-aliyun-s.xml setting-aliyun-s.xml
    # ENTRYPOINT ["/java-example/bin/java-example"]
    # SAVE IMAGE --push --insecure 192.168.0.216:8888/library/demo3:latest
