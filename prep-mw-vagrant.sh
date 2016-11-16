#!/bin/bash

CWD="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

. $CWD/bin/functions.sh
. $CWD/bin/begin.sh
. $CWD/bin/continue.sh
. $CWD/bin/config.sh
. $CWD/bin/check-requirements.sh
. $CWD/bin/clone-mw-vagrant.sh
. $CWD/bin/get-vagrant-box.sh
. $CWD/bin/clone-mediawiki.sh
. $CWD/bin/update-mediawiki.sh
. $CWD/bin/copy-mediawiki.sh
. $CWD/bin/update-git-submodules.sh
. $CWD/bin/set-up-mw-vagrant.sh
. $CWD/bin/end.sh