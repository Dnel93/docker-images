# We can have anu # of FROMS to generate files however
FROM maven:3.5-alpine AS builder

COPY app /app

RUN cd /app && mvn package

# The latest FROM is the one used on the final image
FROM openjdk:8-alpine

COPY --from=builder /app/target/my-app-1.0-SNAPSHOT.jar /opt/app.jar

CMD java -jar /opt/app.jar