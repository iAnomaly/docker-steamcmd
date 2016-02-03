#!/bin/sh

if [ "$1" = 'space-engineers-server' ]; then
	[ $(whoami) = root ] && chown -R steam . && su -c "$0 $*" steam
	/home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir /mnt/steam/space-engineers-server/ +app_update 298740 +quit
	wine DedicatedServer/SpaceEngineersDedicated.exe -console
fi

exec "$@"

