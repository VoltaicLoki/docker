# docker-couchpotato

## Description

A Dockerfile for [CouchPotato](https://couchpota.to/).

## Volumes

### `/config`

Configuration files and state for CouchPotato.

### `/library`

Movies Directory

## Ports

### 5050

WebUI port.

## To Run

docker run -d --name="couchpotato" -v /path/to/config:/config -v /path/to/movies:/library -v /path/to/completed/downloads:/downloads -v /etc/localtime:/etc/localtime:ro -p 5050:5050 voltaicloki/couchpotato

## To Run and Link with nzbget
Make sure the nzbget container is running

docker run -d --name="couchpotato" --link nzbget:nzbget -v /path/to/config:/config -v /path/to/movies:/library -v /path/to/completed/downloads:/downloads -v /etc/localtime:/etc/localtime:ro -p 5050:5050 voltaicloki/couchpotato


