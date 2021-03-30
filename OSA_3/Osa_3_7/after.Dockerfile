FROM maven:3.6.0-jdk-11-slim AS build

WORKDIR /usr/src/app

COPY ./spring-example-project .
RUN useradd -m appuser
RUN chown appuser .
USER appuser

RUN mvn -f /usr/src/app/pom.xml clean package

FROM openjdk:8-jdk-alpine
EXPOSE 8080
COPY --from=build usr/src/app/target/docker-example-1.1.3.jar /app/app.jar
RUN adduser -D appuser
RUN chown appuser .
USER appuser
CMD java -jar /app/app.jar


