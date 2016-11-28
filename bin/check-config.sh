#!/bin/bash

msgRule "INFO" ""
msg "INFO" "check for config"
msg "INFO" ""


if [ -f $CWD/bin/config.sh ]; then
  msg "INFO" "found the config.sh file, continuing"
else
  msg "INFO" "missing config.sh. you need to copy the config.sample.sh file"
  msg "INFO" "to config.sh and edit config.sh as appropriate"
  msgRule "INFO" ""
  exit
fi


msgComplete
