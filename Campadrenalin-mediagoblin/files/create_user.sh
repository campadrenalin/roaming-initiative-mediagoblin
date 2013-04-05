#!/bin/bash

adduser --disabled-password --quiet --system \
    --home /var/www-data/mediagoblin --no-create-home \
    --gecos "Mediagoblin depriveleged user" \
    --group mediagoblin
