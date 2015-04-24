# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.ssh.insert_key = false
  config.vm.box = "vStone/centos-6.x-puppet.3.x"
  config.vm.box_check_update = true

  config.vm.synced_folder "puppet/hiera_data", "/etc/hiera"

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--usb", "off"]
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
    # puppet.options = "--graph"
  end

  config.vm.define "graphite-web01" do |gweb01|
    gweb01.vm.hostname = "graphite-web01"
    gweb01.vm.network "forwarded_port", guest: 80, host: 8081
    gweb01.vm.network "private_network", ip: "192.168.1.101"
  end

  config.vm.define "graphite-relay01" do |grel01|
    grel01.vm.hostname = "graphite-relay01"
    grel01.vm.network "forwarded_port", guest: 80, host: 8083
    grel01.vm.network "private_network", ip: "192.168.1.103"
  end

  config.vm.define "graphite-carbon01" do |gcar01|
    gcar01.vm.hostname = "graphite-carbon01"
    gcar01.vm.network "forwarded_port", guest: 80, host: 8082
    gcar01.vm.network "private_network", ip: "192.168.1.102"
  end

  config.vm.define "graphite-carbon02" do |gcar01|
    gcar01.vm.hostname = "graphite-carbon02"
    gcar01.vm.network "forwarded_port", guest: 80, host: 8082
    gcar01.vm.network "private_network", ip: "192.168.1.104"
  end
end
