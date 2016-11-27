#!/bin/bash

msgRule "INFO"
msg "INFO" "check for required applications"
msg "INFO" ""


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
	msg "INFO" "missing vagrant - you’ll need to install vagrant first - https://www.vagrantup.com/"
	msg "INFO" ""
	exit
else
	msg "INFO" "Vagrant found"
fi


msgComplete
