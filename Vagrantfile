# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do |config|

	config.vm.define "spider" do |spider|
		spider.vm.box = "bento/rockylinux-9"
		spider.vm.hostname = "spider"
		spider.vm.network "private_network", ip: "10.10.10.5"

	config.vm.define "dev" do |dev|
		#dev.vm.provision :shell, path: "bootstrap.sh"
		dev.vm.box = "bento/rockylinux-9"
		dev.vm.hostname = "dev01"
		dev.vm.network "private_network", ip: "10.10.10.15"
		#dev.vm.network "forwarded_port", guest: 80, host: 4567
	end

	config.vm.define "qa" do |qa|
#		qa.vm.provision :shell, path: "bootstrap.sh"
		qa.vm.box = "bento/rockylinux-9"
		qa.vm.hostname = "qa01"
		qa.vm.network "private_network", ip: "10.10.10.20"
		#qa.vm.network "forwarded_port", guest: 80, host: 4567
	end

	config.vm.define "prod" do |prod|
		prod.vm.box = "bento/rockylinux-9"
		prod.vm.hostname = "prod01"
		prod.vm.network "private_network", ip: "10.10.10.25"
		#prod.vm.network "forwarded_port", guest: 8500, host: 8500
		#prod.vm.network "forwarded_port", guest: 22, host: 2200
	end
			
end
