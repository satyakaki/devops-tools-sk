# Defines our Vagrant environment
#
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    #config.vm.box = "base"
  
    config.vm.define "devops1" do |devops1|
      devops1.vm.provider "virtualbox" do |vb_devops1|
        vb_devops1.memory = 1024
        vb_devops1.cpus = 2
      end
  
      devops1.vm.box = "ubuntu/trusty64"
      devops1.vm.hostname = "devops1"
      devops1.vm.network "private_network", ip: "192.168.56.11"
  
    end
  
    config.vm.define "devops2" do |devops2|
      devops2.vm.box = "ubuntu/trusty64"
      devops2.vm.hostname = "devops2"
      devops2.vm.network "private_network", ip: "192.168.56.12"
  
    end
  
    config.vm.define "devops3" do |devops3|
      devops3.vm.box = "ubuntu/trusty64"
      devops3.vm.hostname = "devops3"
      devops3.vm.network "private_network", ip: "192.168.56.13"
    end

    config.vm.provision "shell", path: "hostname_script.sh"
    
end