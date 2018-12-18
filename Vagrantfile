# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do |config|

	config.vm.define "web" do |web|
		web.vm.provision :shell, path: "bootstrap.sh"
		web.vm.box = "bento/centos-7.5"
		web.vm.hostname = "hel"
		web.vm.network "private_network", ip: "10.10.10.50"
		web.vm.network "forwarded_port", guest: 80, host: 4567
	end

	config.vm.define "consul" do |consul|
		consul.vm.box = "bento/centos-7.5"
		consul.vm.hostname = "nyx"
		consul.vm.network "private_network", ip: "10.10.10.10"
		consul.vm.network "forwarded_port", guest: 8500, host: 8500
		consul.vm.network "forwarded_port", guest: 22, host: 2200
	end
			
end
