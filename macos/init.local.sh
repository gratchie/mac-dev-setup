#!/bin/bash

# exit if a command fails
set -e

CLONE_DIR=${CLONE_DIR:-/Users/thomg112/code/ansible/macos}

# Make sure Ansible and Homebrew are already installed
if ! which brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if ! which ansible >/dev/null 2>&1; then
  brew install ansible
fi

## Run the playbook. Use the --check flag to run some tests before execution
#ANSIBLE_NOCOWS=1 ansible-playbook -i "${CLONE_DIR}"/hosts.template "${CLONE_DIR}"/main.yml --check --verbose
ANSIBLE_NOCOWS=1 ansible-playbook -i "${CLONE_DIR}"/hosts.template "${CLONE_DIR}"/main.yml --verbose
