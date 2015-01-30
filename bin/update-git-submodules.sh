#!/bin/bash

msgHeader "INFO" "update git submodules"


cd "$VAGRANT_DIR"

msg "INFO" "git submodule update ..."
git submodule update --init --recursive

cd "$PROJECT_DIR"


msg "INFO" "                                                              COMPLETE"