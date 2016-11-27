#!/bin/bash

msgRule "INFO"
msg "INFO" "update git submodules"
msg "INFO" ""


msg "INFO" "git submodule update ..."
git -C "$VAGRANT_DIR" submodule update --init --recursive


msgComplete
