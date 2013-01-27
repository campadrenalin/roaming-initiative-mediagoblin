# Roaming Initiative Mediagoblin Installation

Should provide a working install of GNU Mediagoblin in the /mediagoblin subdirectory of your RI-HTTP site. No guarantees, especially for other sites, but this can work nicely as reference code.

## Installation steps

    $ sudo ./install_deps.sh
    $ sudo ./create_user.sh
    $ sudo ./setup_repo.sh
    $ sudo -u mediagoblin ./deploy.sh
    $ sudo ./deploy_celery.sh

## For maintenance

    $ sudo -u mediagoblin ./upgrade.sh
