#!/bin/bash

docker build --build-arg DB_HOST=192.168.1.101 --build-arg DB_PORT=5432 --build-arg DB_NAME=postgres --build-arg DB_USER=postgres --build-arg DB_PASSWORD=password --build-arg DB_FLYWAY_USER=postgres --build-arg DB_FLYWAY_PASSWORD=password -t seniocaires/gamer-api .
