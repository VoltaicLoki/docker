#! /bin/sh

set -e

[ ! -f /config/nzbget.conf ] && cp /usr/local/share/nzbget/nzbget.conf /config/nzbget.conf

nzbget --configfile /config/nzbget.conf --daemon
