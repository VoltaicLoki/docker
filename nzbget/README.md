# docker-nzbget

## Description

A Dockerfile for [nzbget](http://nzbget.net/).

## Volumes

### `/config`

Configuration files and state for nzbget.

### `/downloads`

Downloads Directory

## Ports

### 6789

WebUI port.

## To Run

docker run -d --name="nzget" -v /path/to/config:/config -v /path/to/completed/downloads:/downloads -v /etc/localtime:/etc/localtime:ro -p 6789:6789 voltaicloki/nzbget

