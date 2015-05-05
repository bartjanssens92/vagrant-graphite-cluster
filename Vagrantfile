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

  config.vm.define "graphite-web" do |node|
    node.vm.hostname = "graphite-web"
    node.vm.network "forwarded_port", guest: 80, host: 8080
    node.vm.network "private_network", ip: "192.168.1.101"
  end

  config.vm.define "graphite-relay" do |node|
    node.vm.hostname = "graphite-relay"
    node.vm.network "forwarded_port", guest: 80, host: 8083
    node.vm.network "private_network", ip: "192.168.1.103"
  end

  config.vm.define "graphite-grafana" do |node|
    node.vm.hostname = "graphite-grafana"
    node.vm.network "forwarded_port", guest: 80, host: 8085
    node.vm.network "private_network", ip: "192.168.1.110"
  end

  config.vm.define "graphite-cache01" do |node|
    node.vm.hostname = "graphite-cache01"
    node.vm.network "forwarded_port", guest: 80, host: 8082
    node.vm.network "private_network", ip: "192.168.1.102"
  end

  config.vm.define "graphite-cache02" do |node|
    node.vm.hostname = "graphite-cache02"
    node.vm.network "forwarded_port", guest: 80, host: 8084
    node.vm.network "private_network", ip: "192.168.1.104"
  end
end
