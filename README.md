## MediaWiki-Vagrant prep
a shell script that prepares a directory for [MediaWiki-Vagrant][1].


## use
1. create a directory for your project
   * `mkdir /path/to/your/project`

1. clone the repo into that directory
   * `git clone -o github https://github.com/dan-nl/mw-vagrant-prep.git /path/to/your/project`
   * `cd /path/to/your/project`

1. copy the `bin/config.sample.sh` file to `config.sh`.
   * `cp bin/config.sample.sh bin/config.sh`

1. alter the `bin/config.sh` contents as appropriate.

1. run the script.
   * `./prep-mw-vagrant.sh`


[1]:http://www.mediawiki.org/wiki/MediaWiki-Vagrant
