# Ansible franklinkim.docker role

[![Build Status](https://img.shields.io/travis/weareinteractive/ansible-docker.svg)](https://travis-ci.org/weareinteractive/ansible-docker)
[![Galaxy](http://img.shields.io/badge/galaxy-franklinkim.docker-blue.svg)](https://galaxy.ansible.com/list#/roles/3275)
[![GitHub Tags](https://img.shields.io/github/tag/weareinteractive/ansible-docker.svg)](https://github.com/weareinteractive/ansible-docker)
[![GitHub Stars](https://img.shields.io/github/stars/weareinteractive/ansible-docker.svg)](https://github.com/weareinteractive/ansible-docker)

> `franklinkim.docker` is an [Ansible](http://www.ansible.com) role which:
>
> * installs docker
> * configures docker
> * adds logrotate for docker container logs

## Installation

Using `ansible-galaxy`:

```shell
$ ansible-galaxy install franklinkim.docker
```

Using `requirements.yml`:

```yaml
- src: franklinkim.docker
```

Using `git`:

```shell
$ git clone https://github.com/weareinteractive/ansible-docker.git franklinkim.docker
```

## Dependencies

* Ansible >= 1.9
* installed docker i.e. with [franklinkim.docker](https://github.com/weareinteractive/ansible-docker)

## Variables

Here is a list of all the default variables for this role, which are also available in `defaults/main.yml`.

```yaml
---

# version
docker_compose_version:

```


## Usage

This is an example playbook:

```yaml
---

- hosts: all
  sudo: yes
  roles:
    - franklinkim.docker
    - franklinkim.docker-compose
  vars:
    docker_compose_version: 1.5.1

```

## Testing

```shell
$ git clone https://github.com/weareinteractive/ansible-docker.git
$ cd ansible-docker
$ vagrant up
```

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests and examples for any new or changed functionality.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

*Note: To update the `README.md` file please install and run `ansible-role`:*

```shell
$ gem install ansible-role
$ ansible-role docgen
```

## License
Copyright (c) We Are Interactive under the MIT license.
