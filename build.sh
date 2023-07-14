#! /bin/bash

docker build expressjs_app -f expressjs_app/Dockerfile -t struckchure/expressjs_app
docker build fastapi_app -f fastapi_app/Dockerfile -t struckchure/fastapi_app
docker build gofiber_app -f gofiber_app/Dockerfile -t struckchure/gofiber_app

docker push struckchure/expressjs_app
docker push struckchure/fastapi_app
docker push struckchure/gofiber_app
