#!/bin/bash

msgRule "INFO" ""
msg "INFO" "clone MediaWiki-Vagrant"
msg "INFO" ""


if [ -d $VAGRANT_DIR ]; then
	msg "INFO" "vagrant directory already exists"
	msg "INFO" "aborting setup to ovoid overwriting the current environment"
	msgRule "INFO" ""
	exit
else
	git clone -o gerrit ssh://$GERRIT_USER@gerrit.wikimedia.org:29418/mediawiki/vagrant "$VAGRANT_DIR"
    msg "INFO" "updating to commit: $COMMIT"
	git -C "$VAGRANT_DIR" checkout $COMMIT
fi


msgComplete
