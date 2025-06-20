# For Java 8, try this
# FROM openjdk:8-jdk-alpine

# For Java 11, try this
FROM adoptopenjdk/openjdk11:alpine-jre

# Refer to Maven build -> finalName
ARG JAR_FILE=target/employee-service-0.0.1-SNAPSHOT.jar

# cd /opt/app by sandesh
WORKDIR /opt/app

# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} employee-service-0.0.1-SNAPSHOT.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","employee-service-0.0.1-SNAPSHOT.jar"]