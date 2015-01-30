#!/bin/bash

msgHeader "INFO" "copy MediaWiki core to vagrant"


copy_mediawiki_core=false
cd "$PROJECT_DIR"

if [ -d $VAGRANT_DIR/mediawiki ]; then
	msg "INFO" "vagrant/mediawiki directory already exists"

	if [ $remove_mediawiki == true ]; then
		copy_mediawiki_core=true
		rm -rf $VAGRANT_DIR/mediawiki
		msg "INFO" "vagrant/mediawiki directory removed"
	else
		msg "INFO" "aborting copy mediawiki core"
	fi
else
	copy_mediawiki_core=true
fi

if [ $copy_mediawiki_core == true ]; then
	mkdir $VAGRANT_DIR/mediawiki
	msg "INFO" "vagrant/mediawiki directory created"

	msg "INFO" "copying mediawiki core to vagrant/mediawiki ..."
	cd "$MW_CORE_DIR"
	cd ..
	cp -r core/ $VAGRANT_DIR/mediawiki
fi

cd "$PROJECT_DIR"


msg "INFO" ""
msg "INFO" "copy MediaWiki core to vagrant complete"