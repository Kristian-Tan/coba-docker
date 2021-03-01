# Coba Docker

this project is my attempt to try/learn using docker

files that will be served:

- http://localhost:8080/index.php : show current date, session id, and phpinfo
- http://localhost:8080/phpinfo.php : show phpinfo
- http://localhost:8080/shell.php : provide shell_exec

please do not expose this image to external network since it have security vulnerability (a.k.a. remote code execution, exposing system information),
use this project on your own risk

how to use:

- install docker (look for specific guide for your OS, in Windows you probably download and install from .exe or .msi, while in linux you should probably run `apt install docker` or `pacman -S docker`)
- to build the container: `sudo docker image build --no-cache -t coba-docker .`
  - run the command in cloned repo
  - option --no-cache = do not cache the repository (only needed when repository content changed)
  - option -t coba-docker = set the newly built image's name to `coba-docker`
- to run the container: `sudo docker run --name coba-docker-instance -d -p 8080:8080 coba-docker`
  - option --name = give the newly run container instance a name `coba-docker-instance`
  - option -d = detached (run in background)
  - option -p = create mapping of port 8080 (container) to port 8080 (hypervisor) so you can access the content from `localhost:8080`
  - last argument `coba-docker`: name of the image to be used
- to open shell of the container: `docker exec --tty -i coba-docker-instance /bin/sh`
  - option --tty = use pseudo tty
  - option -i = interactive shell
- to edit/reload container:
  - stop container process: `docker container stop coba-docker-instance`
  - remove container: `docker container rm coba-docker-instance`
  - rebuild the image: `docker image build --no-cache -t coba-docker`
  - run the newly built image `docker run --name coba-docker-instance -d -p 8080:8080 coba-docker`
