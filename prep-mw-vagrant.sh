#!/bin/bash

. ./bin/functions.sh
. ./bin/begin.sh
. ./bin/continue.sh
. ./bin/config.sh
. ./bin/check-requirements.sh
. ./bin/clone-mw-vagrant.sh
. ./bin/get-vagrant-box.sh
. ./bin/clone-mediawiki.sh
. ./bin/update-mediawiki.sh
. ./bin/copy-mediawiki.sh
. ./bin/update-git-submodules.sh
. ./bin/set-up-mw-vagrant.sh
. ./bin/end.sh