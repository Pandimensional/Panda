#!/bin/bash

bundle exec veewee vbox define 'calin' 'openSUSE-12.3-x86_64-NET_EN'
bundle exe veewe vbox build 'calin' --force --auto --nogui
bundle exec veewee vbox validate 'calin'
bundle exec vagrant basebox export 'calin' --force

vagrant box add 'calin' 'calin'
vagrant init 'calin'
vagrant up
vagrant ssh
