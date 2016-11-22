#!/bin/bash

msgRule "INFO"
msg "INFO" "copy MediaWiki core to vagrant"


copy_mediawiki_core=false

if [ -d $VAGRANT_DIR/mediawiki ]; then
	msg "INFO" "vagrant/mediawiki directory already exists"

	if [ $remove_mediawiki == true ]; then
		copy_mediawiki_core=true
		rm -rf "$VAGRANT_DIR/mediawiki"
		msg "INFO" "vagrant/mediawiki directory removed"
	else
		msg "INFO" "aborting copy mediawiki core"
	fi
else
	copy_mediawiki_core=true
fi

if [ $copy_mediawiki_core == true ]; then
	mkdir "$VAGRANT_DIR/mediawiki"
	msg "INFO" "vagrant/mediawiki directory created"

	msg "INFO" "copying mediawiki core to vagrant/mediawiki ..."
	cp -r "$MW_CORE_DIR/" "$VAGRANT_DIR/mediawiki"
fi


msgComplete