#!/bin/bash

# exit if a command fails
set -e

# start with xcode-select
if [ ! -d "/Library/Developer/CommandLineTools" ]; then
  xcode-select --install
fi

# Make sure Homebrew is installed
if ! which brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  (echo; echo 'eval "\$(/opt/homebrew/bin/brew shellenv)"') >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export PATH="/opt/homebrew/bin:$PATH"
pip3 install --upgrade pip

# Install must haves
if ! which ansible >/dev/null 2>&1; then
  brew install ansible
fi

echo "pre-config completed"
echo ""
echo "================================================"
echo "ACTION REQUIRED: Run the following to activate"
echo "Homebrew in your current shell session:"
echo ""
echo '  eval "$(/opt/homebrew/bin/brew shellenv)"'
echo ""
echo "Then run: bash init-playbook.sh"
echo "================================================"
