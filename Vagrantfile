# -*- mode: ruby -*-
# vi: set ft=ruby :

# for windows install winnfsd
# $ vagrant plugin install vagrant-winnfsd

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.synced_folder ".", "/vagrant", :nfs => true

  # Uncomment the following line and change the first path to the path of your
  # development theme
  # config.vm.synced_folder "/home/example/development/my-grav-theme", "/vagrant/grav-admin/user/themes/example", :owner => "www-data"

  # setup virtual hostname and provision local IP
  config.vm.hostname = "grav.dev"
  config.vm.network "private_network", ip: "192.168.33.10"
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
