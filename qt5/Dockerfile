# create a builder container for qt5
FROM ubuntu:20.04

ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install libfreetype6-dev libfontconfig1-dev libglib2.0-dev \
        libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libice-dev \
        libaudio-dev libgl1-mesa-dev libc6-dev libsm-dev libxcursor-dev \
        libxext-dev libxfixes-dev libxi-dev libxinerama-dev \
                libxrandr-dev libxrender-dev libxkbcommon-dev \
        libxkbcommon-x11-dev libx11-dev

RUN apt-get -y install libxcb1-dev libx11-xcb-dev libxcb-glx0-dev \
        libxcb-icccm4-dev libxcb-image0-dev libxcb-keysyms1-dev \
        libxcb-render0-dev libxcb-render-util0-dev \
        libxcb-randr0-dev libxcb-shape0-dev libxcb-shm0-dev \
        libxcb-sync-dev libxcb-xfixes0-dev \
        libxcb-xinerama0-dev libxcb-xkb-dev

RUN apt-get -y install g++ gperf ninja-build cmake
RUN apt-get -y install libpulse-dev libasound2-dev libssl-dev libcups2-dev \
        libxml++2.6-dev postgresql-server-dev-12

RUN apt-get -y install git
RUN apt-get -y autoremove
RUN mkdir -p /src

ARG USER
ENV USER=${USER}
ARG USERID
ENV USERID=${USERID}
RUN useradd -u ${USERID} ${USER}
USER ${USER}

WORKDIR /src
