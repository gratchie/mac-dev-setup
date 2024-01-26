DEPRECATED - USE `linux` role instead

ansible linux workstation
=========================

Ansible playbook for setting up an ubuntu or fedora workstation.

Add desired software installs to roles/common/vars/main.yml

Or use one of the specific fedora/ubuntu/gnome folders to tweek settings.

### Usage

Add your own hosts file or run locally with

`ansible-playbook -i hosts.template -K main.yml`

The `-e host=` option can be used to specify a host that is in your inventory file.
If you exclude the host variable the playbook will default to localhost.

### Run from repo

```
export REPO=http://path/to/your/ansible/repo
export CLONE_DIR=/where/you/want/files
curl -k -L https://gitlab.com/gratchie/ansible/workstation/master/init.gitrepo.sh | sudo bash
```

### Run it local 

```
export REPO=http://path/to/your/ansible/repo
export CLONE_DIR=/where/you/want/files
curl -k -L https://gitlab.com/gratchie/ansible/workstation/master/init.local.sh | sudo bash
```

### TODO

* Add Epel Repo 
* Add HACK fonts