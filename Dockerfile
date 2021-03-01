FROM php:alpine
WORKDIR /app
# RUN apk add git; git clone git@github.com:Kristian-Tan/coba-docker.git; cd coba-docker/www
RUN apk add git; git clone https://github.com/Kristian-Tan/coba-docker.git; cd coba-docker/www; echo "running in port 8080"
CMD php -S 0.0.0.0:8080
