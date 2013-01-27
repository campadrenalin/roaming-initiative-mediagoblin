#!/bin/bash

set -e

mkdir -p /var/www-data/mediagoblin
cd /var/www-data/mediagoblin

git clone git://gitorious.org/mediagoblin/mediagoblin.git

chown mediagoblin.mediagoblin -R .
