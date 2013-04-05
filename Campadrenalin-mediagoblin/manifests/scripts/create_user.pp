# == Class: mediagoblin::scripts::create_user
#
# Creates the mediagoblin user.
#
# === Parameters
#
# Document parameters here.
#
# [*ensure*]
#   Valid values are +present+ and +absent+.
#
# === Examples
#
#  class { mediagoblin::packages::core:
#    ensure => present,
#  }
#
#  This class is not really meant to be used on its own.
#
# === Authors
#
# Philip Horger <campadrenalin@gmail.com>
#
# === Copyright
#
# Copyright 2013 Your name here, unless otherwise noted.
#

class mediagoblin::scripts::create_user {
    exec {"create_user.sh":
        path => "puppet:///modules/Campadrenalin-mediagoblin/scripts/",
    }
}
