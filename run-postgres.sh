#!/bin/bash

docker run -d --name postgres-gamer-api -e POSTGRES_PASSWORD=password -p 5432:5432 -v $(pwd)/postgres-data:/var/lib/postgresql postgres:13.3