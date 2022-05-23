
#FROM 192.168.0.216:8888/library/jdk11:v1
FROM maven:3.8.5-openjdk-11
WORKDIR /home/demo/
ENV RUN_ENV="dev"
ENV JAVA_OPTS=""
ENV SKYWALKING_AGENT=""
ENV JAVA_OPTS_INNER=" -XX:+UseContainerSupport -XX:MaxRAMPercentage=75.0 -XX:MinRAMPercentage=50.0 -XX:InitialRAMPercentage=50.0 -XX:+PrintCommandLineFlags "
# ADD ./target/demo3-0.0.1-SNAPSHOT.jar app.jar
ADD ./setting-aliyun-s.xml app.jar
ENTRYPOINT [ "sh", "-c", "java $SKYWALKING_AGENT $JAVA_OPTS_INNER $JAVA_OPTS -Dspring.profiles.active=${RUN_ENV} -jar app.jar" ]
