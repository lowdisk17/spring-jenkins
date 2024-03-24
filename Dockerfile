FROM openjdk:23-slim-bullseye
EXPOSE 8888
ADD target/spring-docker.jar spring-docker.jar
ENTRYPOINT [ "java", "-jar", "/spring-docker.jar" ]
