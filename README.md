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
_note_: you may need to run these commands with `sudo` if your user doesn’t have write permission in the `/usr/local` directory

1. clone this project into a directory where you like to store applications; e.g. `/usr/local/opt`
1. add execute permissions to the `prep-mw-vagrant.sh` file
1. symlink to that file in the `/usr/local/bin` directory

```bash
git clone -o github https://github.com/dan-nl/mw-vagrant-prep.git /usr/local/opt/mw-vagrant-prep
chmod +x /usr/local/opt/mw-vagrant-prep/prep-mw-vagrant.sh
ln -s /usr/local/opt/mw-vagrant-prep/prep-mw-vagrant.sh /usr/local/bin/prep-mw-vagrant
```

### config
1. copy the `config.sample.sh` file to `config.sh`.
1. alter the `config.sh` contents as necessary.

```bash
cp /usr/local/opt/mw-vagrant-prep/bin/config.sample.sh /usr/local/opt/mw-vagrant-prep/bin/config.sh
nano /usr/local/opt/mw-vagrant-prep/bin/config.sh
```

## use
```bash
prep-mw-vagrant
```


[1]:http://www.mediawiki.org/wiki/MediaWiki-Vagrant
