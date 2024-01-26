## Ansible OSX roles and Playbooks

Ensure Apple's command line tools are installed (xcode-select --install to launch the installer).


Run the following command to add Python 3 to your $PATH: export PATH="$HOME/Library/Python/3.9/bin:/opt/homebrew/bin:$PATH"
Upgrade Pip: sudo pip3 install --upgrade pip
Install Ansible: pip3 install ansible



To run the script as an initial setup: ./init.local.sh

To execute playbook directly: ansible-playbook main.yml -vvv (--check for NOOP)
