#!/bin/bash
# sed -i "0,/^$/s/^$/\nalias proxy=\"export http_proxy=http:\/\/127.0.0.1:7890;export https_proxy=http:\/\/127.0.0.1:7890\"\nalias unproxy=\"unset http_proxy;unset https_proxy\"\nproxy\n/g" /vagrant/clash-core/`hostname`/.bashrc
# cp /vagrant/clash-core/`hostname`/.bashrc /home/vagrant

systemctl restart clash
