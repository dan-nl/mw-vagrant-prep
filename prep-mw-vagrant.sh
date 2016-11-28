#!/bin/bash

#
# @link http://stackoverflow.com/questions/59895/getting-the-current-present-working-directory-of-a-bash-script-from-within-the-s#answer-246128
#
getcwd() {
  SOURCE="${BASH_SOURCE[0]}"

  # resolve $SOURCE until the file is no longer a symlink
  while [ -h "$SOURCE" ]; do
    CWD="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
    SOURCE="$(readlink "$SOURCE")"

    # if $SOURCE was a relative symlink, we need to resolve it relative to the path where
    # the symlink file was located
    [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
  done

  CWD="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
}

getcwd

. $CWD/bin/functions.sh
. $CWD/bin/check-config.sh
. $CWD/bin/config.sh
. $CWD/bin/begin.sh
. $CWD/bin/continue.sh
. $CWD/bin/check-requirements.sh
. $CWD/bin/clone-mw-vagrant.sh
. $CWD/bin/get-vagrant-box.sh
. $CWD/bin/clone-mediawiki.sh
. $CWD/bin/update-mediawiki.sh
. $CWD/bin/copy-mediawiki.sh
. $CWD/bin/update-git-submodules.sh
. $CWD/bin/set-up-mw-vagrant.sh
. $CWD/bin/end.sh
