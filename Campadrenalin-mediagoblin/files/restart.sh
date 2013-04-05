#!/bin/bash

service mediagoblin-celeryd stop
service mediagoblin-paster stop
service mediagoblin-celeryd start
service mediagoblin-paster start
