# docker-nzbdrone

## Description

A Dockerfile for [Sonaar](https://sonarr.tv/).

## Volumes

### `/config`

Configuration files and state for Sonaar.

### `/library`

TV Show Directory

## Ports

### 8989

WebUI port.

## To Run

docker run -d --name="sonaar" -v /path/to/config:/config -v /path/to/tv/shows:/library -v /path/to/completed/downloads:/downloads -v /etc/localtime:/etc/localtime:ro -p 8989:8989 voltaicloki/sonaar

## To Run and link with nzbget
Make sure the nzbget container is running

docker run -d --name="sonaar" --link nzbget:nzbget -v /path/to/config:/config -v /path/to/tv/shows:/library -v /path/to/completed/downloads:/downloads -v /etc/localtime:/etc/localtime:ro -p 8989:8989 voltaicloki/sonaar
