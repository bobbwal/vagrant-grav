# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  # allows running commands globally in shell for installed composer libraries
  config.vm.provision :shell, path: "files/scripts/setup.sh"

  # setup virtual hostname and provision local IP
  config.vm.hostname = "grav.dev"
  config.vm.network :private_network, :ip => "192.168.33.10"
  config.hostsupdater.aliases = %w{www.grav.dev}
  config.hostsupdater.remove_on_suspend = true

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path = "puppet/modules"
    puppet.manifest_file  = "init.pp"
    puppet.options="--verbose --debug"
  end

  config.vm.provider :virtualbox do |vb|
    vb.memory = 1024
    # vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    # vb.customize ['modifyvm', :id, '--natdnsproxy1', 'on']
  end
end
