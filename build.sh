#!/usr/bin/env bash
xhost +local:root;
docker network create fcs_network;
docker-compose down && docker-compose build --no-cache && docker-comppse up -d;