#!/bin/bash 

# Run this if you need to setup a machine from scratch 

# exit if a command fails
set -e

# Install rpms 
yum -y install python2-pip
#yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install files/ansible-2.6.0.el7.noarch.rpm

# To run: ansible-playbook main.yml -vvv (--check for NOOP)

ansible-playbook main.yml -vvv  



