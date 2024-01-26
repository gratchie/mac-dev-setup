#!/bin/bash

# exit if a command fails
set -e

CLONE_DIR=${CLONE_DIR:-/home/gracet/src/ansible/workstation}

# install initial packages
yum install -y vim ansible git zsh libselinux-python

#ANSIBLE_NOCOWS=1 ansible-playbook -u gracet -i "${CLONE_DIR}"/hosts.template "${CLONE_DIR}"/main.yml --verbose --check
ANSIBLE_NOCOWS=1 ansible-playbook -u gracet -i "${CLONE_DIR}"/hosts.template "${CLONE_DIR}"/main.yml --verbose


# Install and update vundle
# This should probably be moved to ansible
# mkdir -p ~/.vim/bundle
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# vim +PluginInstall +qall

# Install tpm and plugins
# need to automate plugin install
# mkdir -p ~/.tmux/plugins
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

