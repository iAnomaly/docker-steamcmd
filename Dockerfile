FROM ubuntu
MAINTAINER Cameron Boulton <https://github.com/iAnomaly>

RUN apt-get update -y \
&& apt-get install -y lib32gcc1 wget \
&& apt-get upgrade -y \
&& apt-get autoremove -y \
&& apt-get autoclean -y
RUN useradd -m steam
RUN mkdir /mnt/steam
RUN chown steam:steam /mnt/steam
RUN ls -l /mnt
USER steam
RUN mkdir ~/steamcmd
WORKDIR /home/steam/steamcmd
RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
RUN tar -xvzf steamcmd_linux.tar.gz \
&& rm steamcmd_linux.tar.gz
RUN ./steamcmd.sh +quit 

