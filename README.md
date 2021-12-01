# CGAL 5.3 in Docker

This repository provides a Dockerfile to build a Docker image that contains the CGAL 5.3 Release. In order to build the docker image you can run:
```
docker build -f docker/Dockerfile . -t cgal
```

You can also access a prebuilt docker image in dockerhub:
```
docker pull ktertikas/cgal:latest
```

Then you can access the Docker image as usual. CGAL demos that use qt5 for visualization have issues playing well with Docker, but you can get some inspiration from `scripts/step_into.sh` in order to be able to do the visualizations.
