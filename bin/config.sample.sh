#!/bin/bash
# environment specific configuration

msgRule "INFO" ""
msg "INFO" "read config"


# alter these variable as appropriate for your environment
HOME=~
PROJECT_DIR="$HOME"/projects/myproject
MW_CORE_DIR="$HOME"/projects/myproject/core
VAGRANT_DIR="$PROJECT_DIR"/vagrant
GERRIT_USER="<your-gerrit-username>"

# you probably don’t need to change these values
VAGRANT_BOX_NAME=trusty-cloud
VAGRANT_BOX_URL=https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box

# whether or not to remove VAGRANT_DIR/mediawiki if it exists
remove_mediawiki=false

# use master or a specific commit hash
# @see https://git.wikimedia.org/summary/mediawiki%2Fvagrant for available commit hashes
COMMIT=master


cd $PROJECT_DIR
msgComplete