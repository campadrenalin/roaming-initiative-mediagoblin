#!/bin/bash

set -e

CONF_LOCATION="$(dirname $0)"

# All expected to run as mediagoblin user
cd /var/www-data/mediagoblin/mediagoblin

cp $CONF_LOCATION/mediagoblin_local.ini .

virtualenv . && ./bin/python setup.py develop
./bin/easy_install flup

./bin/gmg dbupdate
