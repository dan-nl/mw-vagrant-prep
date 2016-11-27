#!/bin/bash

read -p "[QUERY] would you like to continue (Y/n)? " -n 1 -r

if [[ $REPLY =~ ^[^Yy]$ ]]; then
	echo
	exit
fi

msg "INFO" ""
