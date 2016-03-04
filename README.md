[![Build Status](https://travis-ci.org/FGtatsuro/ansible-packer.svg?branch=master)](https://travis-ci.org/FGtatsuro/ansible-packer)

ansible-packer
====================================

Ansible role for Packer.

Requirements
------------

The dependencies on other softwares/librarys for this role.

- Debian
- OSX
  - Homebrew (>= 0.9.5)

Role Variables
--------------

The variables we can use in this role.

- packer_download_url: default="https://releases.hashicorp.com/packer/0.9.0/packer_0.9.0_linux_amd64.zip"
- packer_sha256: default="4119d711855e8b85edb37f2299311f08c215fca884d3e941433f85081387e17c"
- packer_download_tmppath: default="/tmp/packer.zip"
- packer_binpath: default="/usr/local/bin"

If you want to overwrite values, please check https://www.packer.io/downloads.html.

Role Dependencies
-----------------

The dependencies on other roles for this role.

- FGtatsuro.python-requirements

Example Playbook
----------------

    - hosts: all
      roles:
         - { role: FGtatsuro.packer }

Test on local Docker host
-------------------------

This project run tests on Travis CI, but we can also run then on local Docker host.
Please check `install`, `before_script`, and `script` sections of `.travis.yml`. 
We can use same steps of them for local Docker host.

Local requirements are as follows.

- Ansible (>= 2.0.0)
- Docker (>= 1.10.1)

License
-------

MIT
