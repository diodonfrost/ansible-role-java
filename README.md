# ansible-role-java

[![Build Status](https://travis-ci.org/diodonfrost/ansible-role-java.svg?branch=master)](https://travis-ci.org/diodonfrost/ansible-role-java)
[![Ansible Galaxy](https://img.shields.io/badge/galaxy-diodonfrost.java-660198.svg)](https://galaxy.ansible.com/diodonfrost/java)

This role provide a compliance for install java on your target host.

## Requirements

This role was developed using Ansible 2.4 Backwards compatibility is not guaranteed.
Use `ansible-galaxy install diodonfrost.java` to install the role on your system.

Supported platforms:

```yaml
- name: EL
  versions:
    - 7
    - 6
    - 5
- name: Fedora
  versions:
    - 29
    - 28
    - 27
    - 26
- name: Debian
  versions:
    - stretch
    - jessie
    - wheezy
    - squeeze
- name: Ubuntu
  versions:
    - bionic
    - xenial
    - trusty
    - precise
    - trusty
- name: OracleLinux
  versions:
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
- name: Gentoo
  versions:
    - stage3
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
# Accepted value: 6,7,8,9,10,11,latest
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

The preferred way of locally testing the role is to use Docker. You will have to install Docker on your system.

You can also use vagrant and Virtualbox with vagrant to run tests locally. You will have to install Virtualbox and Vagrant on your system. For all our tests we use test-kitchen.

Next install test-kitchen:

```shell
# Install dependencies
gem install bundler
bundle install
```

### Testing with Docker

```shell
# List all tests with kitchen
kitchen list

# fast test on one machine
kitchen test default-centos-7

# test on all machines
kitchen test

# for development, create environment
kitchen create default-centos-7

# Apply ansible playbook
kitchen converge default-centos-7

# Apply inspec tests
kitchen verify default-centos-7
```

### Testing with Virtualbox

```shell
# Specify kitchen file on Linux
export KITCHEN_YAML=.kitchen-vagrant.yml

# fast test on one machine
kitchen test os-packaging-freebsd-112
```
### Testing Windows and Solaris with Virtualbox

Windows and Solaris can only be test with Virtualbox provider,do not use 'kitchen test' command for testing Windows and Solaris environment. There 4 steps you will be using with test-kitchen as part of your workflow.

First of all we must set the kitchen file:
```shell
# For testing Windows
export KITCHEN_YAML=.kitchen-windows.yml

# For testing Solaris
export KITCHEN_YAML=.kitchen-solaris.yml
```

Provision the virtual machines, a Linux machine to run Ansible and Windows/Solaris machines to apply playbook again:
```shell
# deploy machines
kitchen create

# Launch playbook
kitchen converge
```

Finaly launch inspec tests:
```shell
kitchen verify
```

For cleaning environment use:
```shell
kitchen destroy
```

## License

Apache 2

## Resources

Openjdk version compatibility operating system:

| distribution | release | java_version  |
|--------------| ------- |---------------|
| CentOS       |    7    | 6, 7 & 8      |
| CentOS       |    6    | 6, 7 & 8      |
| Fedora       |   29    | 8 & 11        |
| Fedora       |   28    | 8 & 11        |
| Fedora       |   27    | 8 & 11        |
| Fedora       |   26    | 8 &  9        |
| Ubuntu       |  18.04  | 8 & 11        |
| Ubuntu       |  16.04  | 8 & 9         |
| Ubuntu       |  14.04  | 6 & 7         |
| Ubuntu       |  12.04  | 6 & 7         |
| Debian       |    9    | 8             |
| Debian       |    8    | 8             |
| Debian       |    7    | 6 & 7         |
| Oraclelinux  |    7    | 6, 7, 8 & 11  |
| Oraclelinux  |    6    | 6, 7 & 8      |
| Amazonlinux  |    7    | 7 & 8         |
| Amazonlinux  |    6    | 6, 7 & 8      |
| Opensuse     |   15    | 8, 10 & 11    |
| Opensuse     |  42.3   | 7 & 8         |
| Opensuse     |  42.2   | 7 & 8         |
| Opensuse     |  42.1   | 7 & 8         |
| Opensuse     |  13.2   | 7 & 8         |
| SLES         |   15    | 8             |
| SLES         |   13    | 8             |
| SLES         |   12    | 8             |
| Archlinux    | rolling | 7, 8, 10 & 11 |
| Gentoo       | stage3  | 8             |
| FreeBSD      | 11.3    | 6, 7 & 8      |
| FreeBSD      | 10.4    | 6, 7 & 8      |
| OpenBSD      |  6.x    | 8             |
| Solaris      |   11    | 6, 7 ,8       |
| Solaris      |   10    | 7, 8          |
| Macosx       |  10.x   | 8, 9, 11      |
| Windows      | 2k16    | 11            |
| Windows      | 2k12r2  | 11            |
| Windows      | 2k8r2   | 11            |
| Windows      |  8.1    | 11            |

## Author Information

This role was created in 2018 by diodonfrost.
