#!/bin/bash

#yum -y update
yum -y install httpd.x86_64

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

systemctl start httpd.service
