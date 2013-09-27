#!/bin/bash
export http_proxy=http://www-proxy.ericsson.se:8080/
export https_proxy=https://www-proxy.ericsson.se:8080/
export ftp_proxy=http://www-proxy.ericsson.se:8080/

bundle exec veewee vbox define --force 'calin' 'openSUSE-11.4-DVD-x86_64'
bundle exe veewee vbox build 'calin' --force --auto --nogui
bundle exec veewee vbox validate 'calin'
bundle exec vagrant basebox export 'calin' --force

vagrant box add 'calin' 'calin'
vagrant init 'calin'
vagrant up
vagrant ssh
