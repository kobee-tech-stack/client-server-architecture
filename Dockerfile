FROM openjdk:8-jdk-alpine
MAINTAINER HaiThai <hthai@kms-technology.com>
# Changed the working directory to /opt/app
WORKDIR /opt/app
ARG JAR_FILE=target/web-service-0.0.1.jar
# cp spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} web-service-0.0.1.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","web-service-0.0.1.jar"]
