# Muse Score Docker Build

Build MuseScore in docker containers.

This Dockerfile creates a container where Qt5 can be compiled (on a recent Ubuntu version), as well as MuseScore.

## Building qt5

Creates the docker image, run the build, and copy the qt5 result files locally.

```bash
docker build ./qt5 --build-arg USER=$USER --build-arg USERID=$(id -u) -t qt5:latest
docker run -it --rm -v $(pwd)/src:/src/ -v $(pwd)/qt5:/build qt5 /bin/bash /build/build.sh
docker rmi qt5
```

## Building MuseScore

```bash
docker build ./MuseScore --build-arg USER=$USER --build-arg USERID=$(id -u) -t msbuild:latest
docker run -it --rm -v $(pwd)/src:/src/ -v $(pwd)/MuseScore:/build msbuild /bin/bash /build/build.sh
```

# Notes

Installing docker on ubuntu 20.04 (https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04):
* `sudo apt install apt-transport-https ca-certificates curl software-properties-common`
* `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`
* `sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"`
* `apt-cache policy docker-ce`
* `sudo apt install docker-ce`

