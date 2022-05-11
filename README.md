# My Personal Dotfiles

## Prereqs

* Ansible is installed
* [ohmyzsh](https://ohmyz.sh/#install) is installed

## Clone

`git clone https://github.com/ThomasCrowley/dotfiles ~/.dotfiles`

## Running

I am usign ansible-playbook to set up my dotfiles. To plan the changes run:

```bash
ansible-playbook playbook.yml --check
```

Then to apply them run

```bash
ansible-playbook playbook.yml
```

### If you're running a mac and want to install the software you run

```bash
brew bundle --file=Brewfile
```
