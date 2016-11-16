#!/bin/bash

msgRule "INFO"
msg "INFO" "clone mediawiki"


if [ ! -d $MW_CORE_DIR ]; then
	git clone -o gerrit ssh://GERRIT_USER@gerrit.wikimedia.org:29418/mediawiki/core $MW_CORE_DIR
else
	msg "INFO" "mediawiki directory already exists, no need to clone it"
fi


msgComplete