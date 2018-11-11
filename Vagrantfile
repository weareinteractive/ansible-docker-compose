# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<-SCRIPT
  distribution=$(cat /etc/issue | head -n +1 | awk '{print $1}')
  if [ "$distribution" = "Ubuntu" ]; then
    sudo apt-get update
    sudo apt-get install -y python
  elif [ "$distribution" = "CentOS" ]; then
    echo "done"
  fi
SCRIPT

Vagrant.configure("2") do |config|
  config.vbguest.no_remote = true
  config.vbguest.auto_update = false

  # Ubuntui

  config.vm.define 'bionic' do |instance|
    instance.vm.box = 'ubuntu/bionic64'
  end

  config.vm.define 'xenial' do |instance|
    instance.vm.box = 'ubuntu/xenial64'
  end

  # CentOS

  config.vm.define 'centos7' do |instance|
    instance.vm.box = 'centos/7'
  end

  config.vm.provision "shell", inline: $script


  # View the documentation for the provider you're using for more
  # information on available options.
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "tests/main.yml"
    ansible.verbose = 'vv'
  end
end
