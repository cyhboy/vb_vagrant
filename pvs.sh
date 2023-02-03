#!/bin/bash

if grep -q "127.0.0.1" "/vagrant/clash-core/`hostname`/.bashrc"; then
    echo "hello `hostname`"
    cp /home/vagrant/.bashrc /vagrant/clash-core/`hostname`/.bashrc.update
else
    echo "config proxy unproxy command for `hostname`"
    sed -i "0,/^$/s/^$/\nalias proxy=\"export http_proxy=http:\/\/127.0.0.1:7890;export https_proxy=http:\/\/127.0.0.1:7890\"\nalias unproxy=\"unset http_proxy;unset https_proxy\"\n/g" /vagrant/clash-core/`hostname`/.bashrc
    cp /vagrant/clash-core/`hostname`/.bashrc /home/vagrant
fi


if grep -q "127.0.0.1" "/vagrant/clash-core/`hostname`/.bashrc_root"; then
    echo "hello `hostname` root"
    cp /root/.bashrc /vagrant/clash-core/`hostname`/.bashrc_root.update
else
    echo "config proxy unproxy command for `hostname` root"
    sed -i "0,/^$/s/^$/\nalias proxy=\"export http_proxy=http:\/\/127.0.0.1:7890;export https_proxy=http:\/\/127.0.0.1:7890\"\nalias unproxy=\"unset http_proxy;unset https_proxy\"\n/g" /vagrant/clash-core/`hostname`/.bashrc_root
    cp /vagrant/clash-core/`hostname`/.bashrc_root /root/.bashrc
fi

systemctl restart clash
