FROM debian:stable

# to build image, cd into its directory and run:
# $ sudo docker build -t gf .
# after it is built:
# $ sudo docker run -it -p 8080:80 gf /bin/bash
# -it means interactive terminal, and -p port1:port2 maps the container port port1 to the host's port port2

## texlive layer
RUN apt-get update && apt-get -y --no-install-recommends install wget && wget http://www.grammaticalframework.org/download/gf_3.9-1_amd64.deb && dpkg -i gf_3.9-1_amd64.deb

WORKDIR /app/

## environment variables | should use https://docs.docker.com/engine/reference/commandline/run/#set-environment-variables--e-env-env-file instead?
# to make UTF-8 default system encoding
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

## Make port 80 available to the world outside this container
#EXPOSE 80

## copy the /src directory's contents into the container at directory
ADD . /app/
