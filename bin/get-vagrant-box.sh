#!/bin/bash

msgHeader "INFO" "get Vagrant box"


cd $PROJECT_DIR
box_in_list=$( vagrant box list | grep $VAGRANT_BOX_NAME )

if [[ $box_in_list == *$VAGRANT_BOX_NAME* ]]; then
	msg "INFO" "box $VAGRANT_BOX_NAME already exists"
	msg "INFO" "aborting download of box"
else
	msg "INFO" "downloading $VAGRANT_BOX_NAME box"
	msg "INFO" ""
	vagrant box add $VAGRANT_BOX_NAME $VAGRANT_BOX_URL
fi


cd $PROJECT_DIR

msg "INFO" ""
msg "INFO" "get Vagrant box complete"
