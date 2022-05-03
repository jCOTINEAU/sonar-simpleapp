FROM gradle:jdk11 AS builder

COPY app /app
WORKDIR /app

RUN ./gradlew build

FROM openjdk:11-jre AS final

COPY --from=builder /app/build/libs/sample-project-0.0.1-SNAPSHOT.jar /dist/sample-project.jar
WORKDIR /dist

ENTRYPOINT [ "java","-jar","/dist/sample-project.jar"]