lint:
	ansible-lint .

ubuntu18.04:
	vagrant up bionic
	vagrant destroy -f bionic

ubuntu16.04:
	vagrant up xenial
	vagrant destroy -f xenial

centos7:
	vagrant up centos7
	vagrant destroy -f centos7
