#!/bin/bash

msgRule "INFO"
msg "INFO" "check for required applications"

cd $PROJECT_DIR
req_git=$( which git )
req_vagrant=$( which vagrant )

if [[ $req_git != *git* ]]; then
	msg "INFO" "missing git - you’ll need to install git first"
	msg "INFO" ""
	exit
else
	msg "INFO" "git found"
fi

if [[ $req_vagrant != *vagrant* ]]; then
	msg "INFO" "missing Vagrant - you’ll need to install Vagrant first"
	msg "INFO" ""
	exit
else
	msg "INFO" "Vagrant found"
fi

cd $PROJECT_DIR
msgComplete