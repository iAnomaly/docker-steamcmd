FROM ianomaly/docker-ubuntu-steamcmd
MAINTAINER Cameron Boulton <https://github.com/iAnomaly>

RUN apt-get update && apt-get install -y \
software-properties-common
RUN dpkg --add-architecture i386 \
&& add-apt-repository ppa:ubuntu-wine/ppa \
&& apt-get update
RUN apt-get install -y \
wine1.7
USER steam
RUN mkdir /mnt/steam/space-engineers-server
WORKDIR /mnt/steam/space-engineers-server
ENV DISPLAY= WINEDEBUG=-all
RUN WINEARCH=win32 winecfg \
&& winetricks -q dotnet40
EXPOSE 27016
#ENTRYPOINT ["/home/steam/steamcmd/steamcmd.sh", "+login anonymous", "+force_install_dir /mnt/steam/space-engineers-server/", "+app_update 298740", "+quit"]
ENTRYPOINT ["wine", "DedicatedServer/SpaceEngineersDedicated.exe", "-console"]

