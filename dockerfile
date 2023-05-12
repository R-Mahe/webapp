FROM adoptopenjdk/openjdk11:alpine-jre
ARG warname=target/spring-boot-web.jar
WORKDIR /opt/app
COPY ${warname} app.jar
ENTRYPOINT ["java","-jar","app.jar"]