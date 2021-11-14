## arai2 with webui

docker compose script for setting up aria2 download client

- clone this repo
- edit `docker-compose.yml` file to specify following things
    - path for `downloads` volume
    - path for `completed` volume
    - aria2 rpc secret under environments of `aria-daemon` service
- run ./install.sh this will run
    - `UID=${id -u} GID=${id -g} docker-compose -d up`
    - create an application shortcut


