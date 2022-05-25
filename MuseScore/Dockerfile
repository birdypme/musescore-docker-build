# main builder for musescore, uses the qt builder
FROM ubuntu:20.04
ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get -y install libsndfile-dev git cmake ninja-build gperf g++ python3 \
    libpulse-dev libasound2-dev libglib2.0-dev libgl1-mesa-dev libpng16-16 gdb

ARG USER
ENV USER=${USER}
ARG USERID
ENV USERID=${USERID}
RUN useradd -u ${USERID} ${USER}
USER ${USER}

ENV QTDIR=/src/qt5/qtbase
WORKDIR /src
