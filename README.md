## MediaWiki-Vagrant prep
a shell script that prepares a directory for [MediaWiki-Vagrant][1].

the script is intended to prepare a directory for use with MediaWiki-Vagrant. using config values in bin/config.sh it will:

* clone vagrant into `PROJECT_DIR/vagrant`
* if needed, add `VAGRANT_BOX_NAME` to the available Vagrant boxes
* clone or git pull mediawiki core into `MW_CORE_DIR/core`
* copy `MW_CORE_DIR/core` into `PROJECT_DIR/vagrant/mediawiki`
* update `PROJECT_DIR/vagrant/puppet` submodules
* setup `PROJECT_DIR/vagrant`

## setup
### script
_note_: you may need to run these commands with sudo if your user doesn’t have write permission in the `/usr/local` directory

1. clone this project into a directory where you like to store applications; e.g. `/usr/local`
1. add execute permissions to the `prep-mw-vagrant.sh` file
1. symlink to that file in the `/usr/local/bin` directory

```bash
git clone -o github https://github.com/dan-nl/mw-vagrant-prep.git /usr/local/mw-vagrant-prep
chmod +x /usr/local/mw-vagrant-prep/prep-mw-vagrant.sh
ln -s /usr/local/mw-vagrant-prep/prep-mw-vagrant.sh /usr/local/bin/prep-mw-vagrant
```

### config
1. copy the `bin/config.sample.sh` file to `config.sh`.
   * `cp bin/config.sample.sh bin/config.sh`

1. alter the `bin/config.sh` contents as appropriate.

## use
1. create a directory for your project
   * `mkdir /path/to/your/project`

1. make sure the values in `bin/config.sh` match your project setup.

1. run the script
   * `prep-mw-vagrant.sh`


[1]:http://www.mediawiki.org/wiki/MediaWiki-Vagrant
