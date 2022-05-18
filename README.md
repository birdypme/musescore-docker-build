# Muse Score Docker Build

Build MuseScore in docker containers.

This Dockerfile creates a container where Qt5 can be compiled (on a recent Ubuntu version), as well as MuseScore.

## Building qt5

Creates the docker image, run the build, and copy the qt5 result files locally.

```︃bash
docker build ./qt5 -t qt5:latest
id=$(docker create qt5)
docker cp $id:/src/qt5 ../qt5
docker rm -v $id
docker rmi qt5
```

## Building MuseScore

```bash
docker build ./MuseScore -t msbuild:latest
docker run -it -v $(pwd)/../qt5:/src/qt5 $(pwd)/MuseScore:/build msbuild /build/build.sh
```

# Notes

Installing docker on ubuntu 20.04 (https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04):
* `sudo apt install apt-transport-https ca-certificates curl software-properties-common`
* `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`
* `sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"`
* `apt-cache policy docker-ce`
* `sudo apt install docker-ce`

