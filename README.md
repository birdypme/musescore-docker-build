# Muse Score Docker Build

Build MuseScore in docker containers.

This Dockerfile creates a container where Qt5 can be compiled (on a recent Ubuntu version), as well as MuseScore.

︃`︃sudo docker build . -t msbuild:latest`

# Notes

Installing docker on ubuntu 20.04 (https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04):
* `sudo apt install apt-transport-https ca-certificates curl software-properties-common`
* `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`
* `sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"`
* `apt-cache policy docker-ce`
* `sudo apt install docker-ce`

