FROM openjdk:11 AS builder

ARG DB_HOST DB_PORT DB_NAME DB_USER DB_PASSWORD DB_FLYWAY_USER DB_FLYWAY_PASSWORD

WORKDIR /build

ADD . .

RUN ./mvnw -Dspring.profiles.active=prod -Ddb_host=${DB_HOST} -Ddb_port=${DB_PORT} -Ddb_name=${DB_NAME} -Ddb_user=${DB_USER} -Ddb_password=${DB_PASSWORD} -Ddb_flyway_user=${DB_FLYWAY_USER} -Ddb_flyway_password=${DB_FLYWAY_PASSWORD} package

FROM openjdk:11

WORKDIR /app

COPY --from=builder /build/target/gamer-api-0.0.1.jar run.jar

ENTRYPOINT ["java","-jar","run.jar"]
