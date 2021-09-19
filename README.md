andrewrothstein.krew
=========

![Build Status](https://github.com/andrewrothstein/ansible-krew/actions/workflows/build.yml/badge.svg)

Installs [krew](https://github.com/kubernetes-sigs/krew/releases).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.krew
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
