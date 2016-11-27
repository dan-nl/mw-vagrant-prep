#!/bin/bash

msgRule "INFO"
msg "INFO" "setting up MediaWiki Vagrant"
msg "INFO" ""


cd $VAGRANT_DIR
vagrant config git_user $GERRIT_USER
./setup.sh
cd ~


msgComplete
