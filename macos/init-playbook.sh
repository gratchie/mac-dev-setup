## Run the playbook. Use the --check flag to run some tests before execution

# Cache sudo credentials so Homebrew pkg installers (zoom, microsoft-office, etc.) don't fail
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check
# ANSIBLE_NOCOWS=1 ansible-playbook -i hosts.template main.yml --check --verbose --ask-become-pass

# Execute
ANSIBLE_NOCOWS=1 ansible-playbook -i hosts.template main.yml --verbose --ask-become-pass
