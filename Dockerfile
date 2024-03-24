FROM openjdk:23-slim-bullseye
EXPOSE 8888
ADD target/spring-jenkins.jar spring-jenkins.jar
ENTRYPOINT [ "java", "-jar", "/spring-jenkins.jar" ]
