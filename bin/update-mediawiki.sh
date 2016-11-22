#!/bin/bash

msgRule "INFO"
msg "INFO" "git pull mediawiki core"


if [ -d $MW_CORE_DIR ]; then
	if [ ! -d $MW_CORE_DIR/.git ]; then
		msg "INFO" "cannot update mediawiki"
		msg "INFO" "the mediawiki core directory exists, however there is no .git directory"
	else
		msg "INFO" "git pull ..."
		git -C "$MW_CORE_DIR" pull
	fi
fi


cd $PROJECT_DIR
msgComplete