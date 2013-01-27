# Roaming Initiative Mediagoblin Installation

Should provide a working install of GNU Mediagoblin in the /mediagoblin subdirectory of your RI-HTTP site. No guarantees, especially for other sites, but this can work nicely as reference code.

## Installation steps

    $ sudo ./install_deps.sh
    $ sudo ./create_user.sh

    $ # set up mail server
    $ sudo apt-get install postfix
    (Select "internet site" and the proper site name)

    $ # set up PostGRE
    $ sudo -u postgres createuser mediagoblin
    (answer every question with 'n' for no)
    $ sudo -u postgres createdb -E UNICODE -O mediagoblin mediagoblin

    $ sudo ./setup_repo.sh
    $ sudo -u mediagoblin `pwd`/deploy.sh
    $ sudo ./deploy_celery.sh

## For maintenance

    $ sudo -u mediagoblin ./upgrade.sh
