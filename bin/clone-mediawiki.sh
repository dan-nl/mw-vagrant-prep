#!/bin/bash

msgHeader "INFO" "clone mediawiki"


if [ ! -d "$MW_CORE_DIR" ]; then
	mkdir "$MW_CORE_DIR"
	cd "$MW_CORE_DIR"
	git clone -o gerrit ssh://GERRIT_USER@gerrit.wikimedia.org:29418/mediawiki/core .
else
	msg "INFO" "mediawiki directory already exists, no need to clone it"
fi

cd "$PROJECT_DIR"


msg "INFO" "                                                              COMPLETE"