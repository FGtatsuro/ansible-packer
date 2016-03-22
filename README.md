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

|name|description|default|
|---|---|---|
|packer_download_url|Download URL for Packer archive. Different architecture/version has different URL.|https://releases.hashicorp.com/packer/0.10.0/packer_0.10.0_linux_amd64.zip|
|packer_sha256|SHA256 signature of Packer archive. This is used for idempotency.|eadd33bc0f8fa42034059fc1cda5f43ed6f540746e767480f0706ebed49b45e5|
|packer_download_tmppath|Path downloaded Packer archive is put temporary.|/tmp/packer.zip|
|packer_bin_dir|Path Packer binary is put.|/usr/local/bin|

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
