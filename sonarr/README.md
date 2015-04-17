# docker-nzbdrone

## Description

A Dockerfile for [Sonarr](https://sonarr.tv/).

## Volumes

### `/config`

Configuration files and state for Sonarr.

### `/library`

TV Show Directory

## Ports

### 8989

WebUI port.

## To Run

docker run -d --name="sonarr" -v /path/to/config:/config -v /path/to/tv/shows:/library -v /path/to/completed/downloads:/downloads -v /etc/localtime:/etc/localtime:ro -p 8989:8989 voltaicloki/sonarr

## To Run and link with nzbget
Make sure the nzbget container is running

docker run -d --name="sonarr" --link nzbget:nzbget -v /path/to/config:/config -v /path/to/tv/shows:/library -v /path/to/completed/downloads:/downloads -v /etc/localtime:/etc/localtime:ro -p 8989:8989 voltaicloki/sonarr
