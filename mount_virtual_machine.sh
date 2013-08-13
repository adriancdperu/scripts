# Set up a virtual machine with Ngix in local

# Get Vagrant from http://downloads.vagrantup.com/tags/v1.2.2 or alternatively install via Ruby
gem update
gem install vagrant

mkdir virtualmachine
vagrant init precise32 http://files.vagrantup.com/precise32.box
vagrant up

# Nginx

sudo -s
nginx=stable # use nginx=development for latest development version
add-apt-repository ppa:nginx/$nginx
apt-get update 
apt-get install nginx

# To set up Nginx as bootstrap:
# create a file vim bootstrap.sh
# and include the code:
#
# #!/usr/bin/env bash
# sudo -s
# nginx=stable # use nginx=development for latest development version
# add-apt-repository ppa:nginx/$nginx
# apt-get update 
# apt-get install nginx
# rm -rf /var/www
# ln -fs /vagrant /var/www
#
# then, in the Vagrant file add
# Vagrant.configure("2") do |config|
#  config.vm.box = "precise32"
#  config.vm.provision :shell, :path => "bootstrap.sh"
# end

vagrant ssh

# Test
wget -qO- 127.0.0.1
