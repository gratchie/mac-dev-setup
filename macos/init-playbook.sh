## Run the playbook. Use the --check flag to run some tests before execution
ANSIBLE_NOCOWS=1 ansible-playbook -i hosts.template main.yml --check --verbose
# ANSIBLE_NOCOWS=1 ansible-playbook -i "${CLONE_DIR}"/hosts.template "${CLONE_DIR}"/main.yml --verbose
~
