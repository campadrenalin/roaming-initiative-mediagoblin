#!/bin/bash

set -e

cp mediagoblin-paster.sh /etc/init.d/mediagoblin-paster
insserv mediagoblin-paster

cp mediagoblin-celeryd.sh /etc/init.d/mediagoblin-celeryd
insserv mediagoblin-celeryd

service mediagoblin-paster start
service mediagoblin-celeryd start
