FROM openjdk:23-slim-bullseye
EXPOSE 8888
ADD target/spring-docker.war spring-docker.war
ENTRYPOINT [ "java", "-war", "/spring-docker.war" ]
