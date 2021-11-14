#/bin/bash

read -r -p "Have you update docker-compose.yml with download location [y/N]" res
if [[ "$res" =~ ^([yY][eE][sS]|[yY])$ ]]
then

 # start the docker processes
 UID={id -i} GID=${id -g} docker-compose up -d
 echo "started araia2 daemon and web server processes"
 # TODO:replace the icon path before installing the .desktop file
 # install the .desktop file
 desktop-file-install arai2.desktop
 echo "create application shortcut"
else
 echo "please update the docker-compose.yml with download location"
fi


