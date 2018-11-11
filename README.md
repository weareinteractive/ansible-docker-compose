# Ansible weareinteractive.docker-compose role

[![Build Status](https://img.shields.io/travis/weareinteractive/ansible-docker-compose.svg)](https://travis-ci.org/weareinteractive/ansible-docker-compose)
[![Galaxy](http://img.shields.io/badge/galaxy-weareinteractive.docker-compose-blue.svg)](https://galaxy.ansible.com/list#/roles/3275)
[![GitHub Tags](https://img.shields.io/github/tag/weareinteractive/ansible-docker-compose.svg)](https://github.com/weareinteractive/ansible-docker-compose)
[![GitHub Stars](https://img.shields.io/github/stars/weareinteractive/ansible-docker-compose.svg)](https://github.com/weareinteractive/ansible-docker-compose)

> `weareinteractive.docker-compose` is an [Ansible](http://www.ansible.com) role which:
>
> * installs docker-compose

## Installation

Using `ansible-galaxy`:

```shell
$ ansible-galaxy install weareinteractive.docker-compose
```

Using `requirements.yml`:

```yaml
- src: weareinteractive.docker-compose
```

Using `git`:

```shell
$ git clone https://github.com/weareinteractive/ansible-docker-compose.git weareinteractive.docker-compose
```

## Dependencies

* Ansible >= 2.4
* installed docker i.e. with [weareinteractive.docker-compose](https://github.com/weareinteractive/ansible-docker)

**Note:**

> Since Ansible Galaxy switched all role names to the organization name, this role has moved from `franklinkim.docker-compose` to `weareinteractive.docker-compose`!

## Variables

Here is a list of all the default variables for this role, which are also available in `defaults/main.yml`.

```yaml
---

# version
docker_compose_version:
# optionally set to specific version (pip==9.0.3)
docker_compose_pip_version: pip

```


## Usage

This is an example playbook:

```yaml
---

- hosts: all
  become: yes
  roles:
    - weareinteractive.docker
    - weareinteractive.docker_compose
  vars:
    docker_compose_version: 1.21.0
    docker_compose_pip_version: pip #pip==9.0.3

```


## Testing

```shell
$ git clone https://github.com/weareinteractive/ansible-docker-compose.git
$ cd ansible-docker-compose
$ make test
```

## Contributing
In lieu of a formal style guide, take care to maintain the existing coding style. Add unit tests and examples for any new or changed functionality.

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
