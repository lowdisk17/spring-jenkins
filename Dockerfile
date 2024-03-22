FROM openjdk:17
EXPOSE 8080
ADD target/spring-docker.war spring-docker.war
ENTRYPOINT [ "java", "-war", "/spring-docker.war" ]