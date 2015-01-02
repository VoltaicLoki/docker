# docker-mylar

## Description

A Dockerfile for [Mylar](https://github.com/evilhero/mylar).

## Volumes

### `/config`

Configuration files and state for Mylar.

### `/library`

Movies Directory

## Ports

### 8090

WebUI port.

## To Run

docker run -d --name="mylar" -v /path/to/config:/config -v /path/to/comics:/library -v /path/to/completed/downloads:/downloads -v /etc/localtime:/etc/localtime:ro -p 8090:8090 voltaicloki/mylar

## To Run and Link with nzbget
Make sure the nzbget container is running

docker run -d --name="mylar" --link nzbget:nzbget -v /path/to/config:/config -v /path/to/comics:/library -v /path/to/completed/downloads:/downloads -v /etc/localtime:/etc/localtime:ro -p 8090:8090 voltaicloki/mylar


