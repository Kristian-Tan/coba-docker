# Coba Docker

this project is my attempt to try/learn using docker

files that will be served:

- http://localhost:8080/index.php : show current date, session id, and phpinfo
- http://localhost:8080/phpinfo.php : show phpinfo
- http://localhost:8080/shell.php : provide shell_exec

please do not expose this image to external network since it have security vulnerability (a.k.a. remote code execution, exposing system information),
use this project on your own risk
