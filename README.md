# ansible-role-java

[![molecule](https://github.com/diodonfrost/ansible-role-java/workflows/molecule/badge.svg)](https://github.com/diodonfrost/ansible-role-java/actions)
[![Ansible Galaxy](https://img.shields.io/badge/galaxy-diodonfrost.java-660198.svg)](https://galaxy.ansible.com/diodonfrost/java)

This role provide a compliance for install java on your target host.

## Requirements

This role was developed using Ansible 2.8 Backwards compatibility is not guaranteed.
Use `ansible-galaxy install diodonfrost.java` to install the role on your system.

## Role Variables

This role has multiple variables. The defaults for all these variables are the following:

```yaml
---
# defaults file for ansible-role-java

# Specify java version to install
# Depends on the operating system
# Accepted value: 6,7,8,9,10,11,12,13,15,latest
# latest take latest version of java supported by operating system
# Default latest
java_version: latest

# Install java virtual machine
# Default is true
openjre_install: true

# Install java virtual machine and development kit for java
# Default is false
openjdk_install: false
```

## Dependencies

None

## Example Playbook

This is a sample playbook file for deploying the Ansible Galaxy java role in a localhost and installing openjdk-jre.

```yaml
---
- hosts: localhost
  become: true
  roles:
    - role: diodonfrost.java
```

## Local Testing

This project uses [Molecule](http://molecule.readthedocs.io/) to aid in the
development and testing.

To develop or test you'll need to have installed the following:

* Linux (e.g. [Ubuntu](http://www.ubuntu.com/))
* [Docker](https://www.docker.com/)
* [Python](https://www.python.org/) (including python-pip)
* [Ansible](https://www.ansible.com/)
* [Molecule](http://molecule.readthedocs.io/)
* [Libvirt](https://libvirt.org/) (windows/bsd tests only)
* [Vagrant](https://www.vagrantup.com/downloads.html) (windows/bsd tests only)

### Testing with Docker

```shell
# Test ansible role with ubuntu-22.04
molecule test

# Test ansible role with ubuntu-20.04
image=ansible-ubuntu:20.04 molecule test

# Test ansible role with alpine-latest
image=ansible-alpine:latest molecule test

# Create centos-8 instance
molecule create

# Apply role on centos-8 instance
molecule converge

# Launch tests on centos-8 instance
molecule verify
```

### Testing with Vagrant and Libvirt

```shell
# Test ansible role with FreeBSD
molecule test -s freebsd

# Test ansible role with OpenBSD
molecule test -s openbsd

# Test ansible role with Windows
molecule test -s windows
```

## License

Apache 2

## Author Information

This role was created in 2018 by diodonfrost.
