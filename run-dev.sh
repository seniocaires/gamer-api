#!/bin/bash

docker run -it --rm -e DB_HOST=192.168.1.101 -e DB_PORT=5432 -e DB_NAME=postgres -e DB_USER=postgres -e DB_PASSWORD=password -e DB_FLYWAY_USER=postgres -e DB_FLYWAY_PASSWORD=password seniocaires/gamer-api
