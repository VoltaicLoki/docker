#! /bin/sh

set -e

git -C /mylar pull

[ ! -f /config/exceptions.csv ] && cp /mylar/exceptions.csv /config/exceptions.csv
[ ! -f /config/custom_exceptions_sample.csv ] && cp /mylar/custom_exceptions_sample.csv /config/custom_exceptions_sample.csv
[ ! -f /config/substitutes_sample.csv ] && cp /mylar/substitutes_sample.csv /config/substitutes_sample.csv

python2.7 /mylar/Mylar.py --datadir=/config --config=/config/mylar.cfg
