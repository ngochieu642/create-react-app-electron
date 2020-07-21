#!/usr/bin/env bash
xhost +local:root;
docker network create fcs_network;
docker-compose down && docker-compose up --build -d;