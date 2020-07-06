# filebeat formula
Install and configure filebeat.

See the full [Salt Formulas installation and usage instructions](http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html).

## Available states

* filebeat.install
* filebeat.config
* filebeat.service

## filebeat.install

Installs the filebeat package.

## filebeat.config

Configures filebeat, and installs rc levels for startup on reboot.

### Usage

See pillar.example for example configuration.

This formula is compatible with Filebeat 7.x

## filebeat.service

Starts the filebeat service. 


Testing
=======

Testing is done with [Test Kitchen](http://kitchen.ci/)

```sh
gem install bundler
bundle install
kitchen list
kitchen converge default-ubuntu-1804
kitchen verify default-ubuntu-1804
```

Requirements
------------

* Ruby
* Vagrant

