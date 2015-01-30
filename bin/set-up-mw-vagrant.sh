#!/bin/bash

msgHeader "INFO" "setting up MediaWiki Vagrant"


cd "$VAGRANT_DIR"
vagrant config git_user $GERRIT_USER
./setup.sh

cd "$PROJECT_DIR"


msg "INFO" ""
msg "INFO" "setting up MediaWiki Vagrant complete"