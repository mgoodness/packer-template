# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  config.vm.define "template", primary: true do |template|
    template.vm.box = "mgoodness/packer-template"
    template.vm.hostname = "template"
    template.vm.network "private_network", ip: "192.168.23.45"
  end

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "1024"
  end
end
