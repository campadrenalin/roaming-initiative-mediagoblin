# == Class: mediagoblin
#
# Full description of class mediagoblin here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if it
#   has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should not be used in preference to class parameters  as of
#   Puppet 2.6.)
#
# === Examples
#
#  class { mediagoblin:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ]
#  }
#
# === Authors
#
# Philip Horger <campadrenalin@gmail.com>
#
# === Copyright
#
# Copyright 2013 Your name here, unless otherwise noted.
#
class mediagoblin (
    $ensure = present,
) {

    if ! ($ensure in ["present", "absent"]) {
        fail("mediagoblin ensure parameter must be present or absent")
    }

    $service_enable = false
    $service_ensure = stopped
    $package_ensure = present

    mediagoblin::packages::core {
        ensure => $package_ensure,
    }

    service {'mediagoblin-paster':
        enable => $service_enable,
        ensure => $service_ensure,
    }
    service {'mediagoblin-celeryd':
        enable => $service_enable,
        ensure => $service_ensure,
    }

}
