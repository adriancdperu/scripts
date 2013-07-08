#!/bin/bash

# RUN ME AS SUDO

echo "==Vagrant CentOS UP=="
mkdir -p vagrant/server1 && cd vagrant/server1
vagrant box add server1 https://dl.dropbox.com/u/7225008/Vagrant/CentOS-6.3-x86_64-minimal.box
vagrant init server1

cat <<-EOF | sudo sh -c "cat >~/vagrant/server1/VagrantFile"
  config.vm.box = "server1"
  config.vm.network :hostonly, "192.168.33.10"
EOF

vagrant up
vagrant ssh
