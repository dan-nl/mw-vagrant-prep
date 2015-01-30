#!/bin/bash

msgRule "INFO" ""
msg "INFO" "clone MediaWiki-Vagrant"


if [ -d $PROJECT_DIR/vagrant ]; then
	msg "INFO" "vagrant directory already exists"
	msg "INFO" "aborting setup to ovoid overwriting the current environment"
	msgRule "INFO" ""
	exit
else
	cd $PROJECT_DIR
	git clone -o gerrit ssh://$GERRIT_USER@gerrit.wikimedia.org:29418/mediawiki/vagrant
	cd $PROJECT_DIR/vagrant
	git checkout $COMMIT
fi


cd $PROJECT_DIR

msg "INFO" ""
msg "INFO" "clone MediaWiki-Vagrant complete"
