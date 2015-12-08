#!/bin/bash -eux

set DEBIAN_FRONTEND noninteractive

apt-get -y install software-properties-common

# Install Python 2.7 repository
apt-add-repository ppa:fkrull/deadsnakes-python2.7

# Install Ansible repository
apt-add-repository ppa:ansible/ansible

apt-get -y update && apt-get -y full-upgrade

# Install Ansible, Git, and other dependencies
apt-get -y install ansible git

# Install Ansible roles from requirements file
ansible-galaxy install -r /tmp/requirements.yml
