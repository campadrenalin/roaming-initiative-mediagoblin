#!/bin/bash

# Expects to be run as mediagoblin user

cd /var/www-data/mediagoblin/mediagoblin

./bin/python setup.py develop --upgrade && ./bin/gmg dbupdate
