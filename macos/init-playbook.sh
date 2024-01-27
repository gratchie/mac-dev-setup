## Run the playbook. Use the --check flag to run some tests before execution

# Check
# ANSIBLE_NOCOWS=1 ansible-playbook -i hosts.template main.yml --check --verbose --ask-become-pass

# Execute
ANSIBLE_NOCOWS=1 ansible-playbook -i hosts.template main.yml --verbose --ask-become-pass


# Execute without sudo 
# ANSIBLE_NOCOWS=1 ansible-playbook -i hosts.template main.yml --verbose
