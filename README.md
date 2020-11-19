# ansible-role-java

[![molecule](https://github.com/diodonfrost/ansible-role-java/workflows/molecule/badge.svg)](https://github.com/diodonfrost/ansible-role-java/actions)
[![Ansible Galaxy](https://img.shields.io/badge/galaxy-diodonfrost.java-660198.svg)](https://galaxy.ansible.com/diodonfrost/java)

This role provide a compliance for install java on your target host.

## Requirements

This role was developed using Ansible 2.4 Backwards compatibility is not guaranteed.
Use `ansible-galaxy install diodonfrost.java` to install the role on your system.

Supported platforms:

```yaml
- name: EL
  versions:
    - 8
    - 7
    - 6
    - 5
- name: Fedora
  versions:
    - 32
    - 31
    - 30
    - 29
    - 28
    - 27
    - 26
- name: Debian
  versions:
    - buster
    - stretch
    - jessie
    - wheezy
    - squeeze
- name: Ubuntu
  versions:
    - focal
    - disco dingo
    - bionic
    - xenial
    - trusty
    - precise
    - trusty
- name: OracleLinux
  versions:
    - 8
    - 7
    - 6
- name: Amazon
  versions:
    - 2017.12
    - 2016.03
    - 2013.09
- name: opensuse
  versions:
    - 15.1
    - 15
    - 42.3
    - 42.2
    - 42.1
    - 13.2
- name: SLES
  versions:
    - 11
    - 12
- name: ArchLinux
  versions:
    - any
- name: Alpine
  versions:
    - any
- name: Gentoo
  versions:
    - any
- name: ClearLinux
  versions:
    - any
- name: FreeBSD
  versions:
    - 11.2
    - 10.4
    - 10.3
- name: OpenBSD
  versions:
    - 6.0
    - 6.4
- name: Solaris
  versions:
    - 10
    - 11.0
- name: MacOSX
  versions:
    - 10.10
    - 10.11
    - 10.12
    - 10.13
- name: Windows
  versions:
    - 2016
    - 2012R2
    - 2008R2
    - 8.1
```

## Role Variables

This role has multiple variables. The defaults for all these variables are the following:

```yaml
---
# defaults file for ansible-role-java

# Specify java version to install
# Depends on the operating system
# Accepted value: 6,7,8,9,10,11,12,13,latest
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
* [Virtualbox](https://www.virtualbox.org/) (windows/bsd test only)
* [Vagrant](https://www.vagrantup.com/downloads.html) (windows/bsd test only)

### Testing with Docker

```shell
# Test ansible role with centos-8
image=ansible-centos:8 molecule test

# Test ansible role with ubuntu-20.04
image=ansible-ubuntu:20.04 molecule test

# Test ansible role with alpine-latest
image=ansible-alpine:latest molecule test

# Create centos-7 instance
image=ansible-centos:7 molecule create

# Apply role on centos-7 instance
image=ansible-centos:7 molecule converge

# Launch tests on centos-7 instance
image=ansible-centos:7 molecule verify
```

### Testing with Vagrant and Virtualbox

```shell
# Test ansible role with FreeBSD
molecule test -s freebsd

# Test ansible role with OpenBSD
molecule test -s openbsd

# Test ansible role with Solaris
molecule test -s solaris

# Test ansible role with Windows
molecule test -s windows
```

## License

Apache 2

## Resources

Openjdk version compatibility operating system:

| image        | release    | java_version      |
|--------------| ---------- |------------------ |
| Alpinelinux  |   3.9      | 7, 8, 10 & 11     |
| Amazonlinux  |    2       | 7 & 8             |
| Amazonlinux  |    1       | 6, 7 & 8          |
| Archlinux    | latest     | 7, 8, 11 & 14     |
| CentOS       |    8       | 8 & 11            |
| CentOS       |    7       | 6, 7 & 8          |
| CentOS       |    6       | 6, 7 & 8          |
| Clear Linux  | latest     | 8, 11, 12 & 13    |
| Debian       |    10      | 11                |
| Debian       |    9       | 8                 |
| Debian       |    8       | 8                 |
| Debian       |    7       | 6 & 7             |
| Fedora       |   32       | 8, 11 & 13        |
| Fedora       |   31       | 8, 11 & 13        |
| Fedora       |   30       | 8, 11 & 12        |
| Fedora       |   29       | 8 & 11            |
| Fedora       |   28       | 8 & 11            |
| Fedora       |   27       | 8 & 11            |
| Fedora       |   26       | 8 &  9            |
| FreeBSD      |  11.3      | 6, 7 & 8          |
| FreeBSD      |  10.4      | 6, 7 & 8          |
| Gentoo       | stage3     | 8                 |
| Macosx       |  10.x      | 8, 9, 11          |
| OpenBSD      |  6.x       | 8                 |
| Opensuse     | tumbleweed | 8, 14 & 15        |
| Opensuse     |  leap      | 8, 9 & 11         |
| Opensuse     |   15       | 8, 10 & 11        |
| Opensuse     |  42.3      | 7 & 8             |
| Opensuse     |  42.2      | 7 & 8             |
| Opensuse     |  42.1      | 7 & 8             |
| Opensuse     |  13.2      | 7 & 8             |
| Oraclelinux  |    8       | 8 & 11            |
| Oraclelinux  |    7       | 6, 7, 8 & 11      |
| Oraclelinux  |    6       | 6, 7 & 8          |
| SLES         |   15       | 8                 |
| SLES         |   13       | 8                 |
| SLES         |   12       | 8                 |
| Solaris      |   11       | 6, 7 ,8           |
| Solaris      |   10       | 7, 8              |
| Ubuntu       |  20.04     | 8 & 11            |
| Ubuntu       |  18.04     | 8 & 11            |
| Ubuntu       |  16.04     | 8 & 9             |
| Ubuntu       |  14.04     | 6 & 7             |
| Ubuntu       |  12.04     | 6 & 7             |
| Windows      |  2k16      | 11                |
| Windows      |  2k12r2    | 11                |
| Windows      |  2k8r2     | 11                |
| Windows      |  8.1       | 11                |

## Author Information

This role was created in 2018 by diodonfrost.
