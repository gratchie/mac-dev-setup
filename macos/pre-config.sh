#!/bin/bash

# exit if a command fails
set -e

export PATH="$HOME/Library/Python/3.9/bin:/opt/homebrew/bin:$PATH" 
pip3 install --upgrade pip

# start with xcode-select
if [ ! -d "/Library/Developer/CommandLineTools" ]; then
  xcode-select --install 
fi 

# Make sure Ansible and Homebrew are already installed
if ! which brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  (echo; echo 'eval "\$(/opt/homebrew/bin/brew shellenv)"') >> $HOME/.zprofile
  eval "\$(/opt/homebrew/bin/brew shellenv)"
fi

# Install must haves
if ! which ansible >/dev/null 2>&1; then
  brew install ansible
fi

echo "pre-config completed"
