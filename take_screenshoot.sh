#!/bin/bash
docker exec -it $(docker ps -q) bash -c 'DISPLAY=:1 import -window root /tmp/screenshot.png'
docker cp $(docker ps -q):/tmp/screenshot.png .
