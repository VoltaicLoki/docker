#! /bin/sh

set -e

[ ! -f /config/nzbget.conf ] && cp /usr/local/share/nzbget/nzbget.conf /config/nzbget.conf
[ ! -f /config/nzbget.log ] && touch /config/nzbget.log

nzbget --configfile /config/nzbget.conf --daemon
tail -f /config/nzbget.log
