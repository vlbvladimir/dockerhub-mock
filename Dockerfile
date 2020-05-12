FROM ubuntu:16.04

RUN apt-get update

RUN apt-get -y update > /dev/null

RUN apt-get -y install \
    sudo \
    net-tools \
    openjdk-11-jdk \
    rsync \
    curl \
	maven \
    > /dev/null


RUN mkdir -p /opt/vlopez

WORKDIR /opt/vlopez

COPY . ./

RUN mvn clean install

EXPOSE 8080