# My Personal Dotfiles

This is inspired by [geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)

## Prereqs

* Ansible is installed
<!-- TODO: add commands for setting up ansible -->
<!-- add prerequisists -->


## Clone

`git clone https://github.com/ThomasCrowley/mac-setup-playbook ~/.mac-setup`

## Running

### Install Ansible Dependency

```bash
ansible-galaxy install -r requirements.yml
```

I am using ansible-playbook to set up my mac. To plan the changes run:

```bash
ansible-playbook playbook.yml --ask-become-pass --check
```

Then to apply them run

```bash
ansible-playbook playbook.yml --ask-become-pass
```
