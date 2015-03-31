# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "vStone/centos-6.x-puppet.3.x"
  config.vm.box_check_update = true

  config.vm.synced_folder "/puppet/hiera_data", "/etc/hiera"

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifymv", :id, "--usb", "off"]
    vb.customize ["modifyvm", :id, "--usbehci", "off"]
  end

  config.vm.provision "puppet" do |puppet|
    env = 'dev'
    puppet.hiera_config_path = "puppet/hiera.yaml"
    puppet.manifest_file = ""
    puppet.manifests_path = "puppet/#{env}/manifests"
    puppet.module_path = "puppet/modules"
    puppet.options = "--environment #{env}"
    # puppet.options = "--verbose --debug"
  end

  config.vm.define "graphite-web" do |gw|
    gw.vm.hostname = "graphite-web"
    gw.vm.network "forwarded_port", guest: 80, host: 8081
    #gw.vm.network "private_network", ip: "192.168.1.101"
  end
end
