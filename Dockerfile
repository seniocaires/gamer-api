FROM openjdk:11

ARG DB_HOST
ARG DB_PORT
ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD
ARG DB_FLYWAY_USER
ARG DB_FLYWAY_PASSWORD

WORKDIR /build

ADD . .

RUN ./mvnw -Dspring.profiles.active=prod -Ddb_host=${DB_HOST} -Ddb_port=${DB_PORT} -Ddb_name=${DB_NAME} -Ddb_user=${DB_USER} -Ddb_password=${DB_PASSWORD} -Ddb_flyway_user=${DB_FLYWAY_USER} -Ddb_flyway_password=${DB_FLYWAY_PASSWORD} package

WORKDIR /app

ENV DB_HOST DB_PORT DB_NAME DB_USER DB_PASSWORD DB_FLYWAY_USER DB_FLYWAY_PASSWORD

RUN cp /build/target/gamer-api-0.0.1.jar run.jar && rm -rf /build

ENTRYPOINT ["java","-jar", "-Dspring.profiles.active=prod", "-Ddb_host=${DB_HOST}", "-Ddb_port=${DB_PORT}", "-Ddb_name=${DB_NAME}", "-Ddb_user=${DB_USER}", "-Ddb_password=${DB_PASSWORD}", "-Ddb_flyway_user=${DB_FLYWAY_USER}", "-Ddb_flyway_password=${DB_FLYWAY_PASSWORD}", "run.jar"]
