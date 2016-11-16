#!/bin/bash

read -p "would you like to continue (y/n)? " -n 1 -r

if [[ $REPLY =~ ^[^Yy]$ ]]; then
	echo
	exit
fi

echo
msg "INFO" ""