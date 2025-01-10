# My Personal Dotfiles

This is inspired by [geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)

## Prereqs

* Ansible is installed
<!-- TODO: add commands for setting up ansible -->
<!-- add prerequisists -->


## Clone

`git clone https://github.com/ThomasCrowley/dotfiles ~/.mac-setup`

## Running

### Install Ansible Dependency

```bash
ansible-galaxy install -r requirements.yml
```

### Set up Ansible Vault

We are using [ansible vault](https://docs.ansible.com/ansible/latest/vault_guide/index.html#creating-encrypted-variables) to protect the secrets. First we need to add the sudo password into the vault.

First create your encrypted file

```bash
ansible-vault create secrets.yml
```

Write your sudo password into the file.

```yml
---
ansible_become_password: mysecretsudopasssworkd4
```


I am usign ansible-playbook to set up my dotfiles. To plan the changes run:

```bash
ansible-playbook playbook.yml --ask-vault-pass --check
```

Then to apply them run

```bash
ansible-playbook playbook.yml --ask-vault-pass
```
