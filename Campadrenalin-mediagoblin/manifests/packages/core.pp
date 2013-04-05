# == Class: mediagoblin::packages::core
#
# Core packages for a basic mediagoblin installation.
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

class mediagoblin::packages::core (
    $ensure = present,
) {
    if ! ($ensure in ["present", "absent"]) {
        fail("mediagoblin ensure parameter must be present or absent")
    }

    if ($ensure == "present") {
        package {
            'git-core':
                ensure => installed;
            'python':
                ensure => installed;
            'python-dev':
                ensure => installed;
            'python-lxml':
                ensure => installed;
            'python-imaging':
                ensure => installed;
            'python-virtualenv':
                ensure => installed;
            'python-psycopg2':
                ensure => installed;
            'postgresql':
                ensure => installed;
            'postgresql-client':
                ensure => installed;
        }
    }

}
