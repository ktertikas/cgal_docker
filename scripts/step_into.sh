#!/bin/bash

xhost +local:docker
docker run -it -e DISPLAY=$DISPLAY \
    --device=/dev/dri:/dev/dri \
    --mount source=/home/konstantinos/code,target=/code,type=bind \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    cgal:latest

