FROM node:8
MAINTAINER	Clemens Putschli <clemens@putschli.de>

# create app dir
WORKDIR /usr/sonos-web

RUN npm install -g sonos-web-cli
RUN sonos-web install
EXPOSE 5050
CMD sonos-web start && : >> log.log && tail -f log.log
