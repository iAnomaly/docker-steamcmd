FROM ubuntu
MAINTAINER Cameron Boulton <https://github.com/iAnomaly>

RUN apt-get update
RUN apt-get install -y \
lib32gcc1 \
wget
RUN apt-get upgrade
RUN useradd -m steam
RUN mkdir /mnt/steam
RUN chown steam:steam /mnt/steam
USER steam
RUN mkdir ~/steamcmd
WORKDIR /home/steam/steamcmd
RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
RUN tar -xvzf steamcmd_linux.tar.gz \
&& rm steamcmd_linux.tar.gz
RUN ./steamcmd.sh +quit 
USER root

