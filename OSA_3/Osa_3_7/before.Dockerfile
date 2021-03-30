FROM openjdk:8

EXPOSE 8080

WORKDIR /usr/src/app

COPY ./spring-example-project .

RUN ./mvnw package

CMD java -jar ./target/docker-example-1.1.3.jar



