FROM openjdk:17-jdk-alpine

WORKDIR /spring-demo-app

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} spring-demo-app.jar

ENTRYPOINT ["java", "-jar", "spring-demo-app.jar"]