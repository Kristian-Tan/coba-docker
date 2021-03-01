# use minimal php base image (alpine linux is very minimal distro with busybox)
FROM php:alpine

# set working directory to /app
WORKDIR /app

# install git (alpine use 'apk' command to install package)
RUN apk add git

# clone php project from github
RUN git clone https://github.com/Kristian-Tan/coba-docker.git
RUN echo "running in port 8080"

# change working directory to www directory inside newly cloned repo
WORKDIR /app/coba-docker/www

# use php's internal webserver
CMD php -S 0.0.0.0:8080
