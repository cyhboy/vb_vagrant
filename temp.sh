    # apt update
    # apt install libxt6 libxmu6
    # apt install -y net-tools

    # cp /vagrant/clash-core/`hostname`/.bashrc.bak /home/vagrant
    # mkdir -p /vagrant/clash-core/`hostname`
    ## source /home/vagrant/.bashrc
    
    # cp /home/vagrant/.bashrc /vagrant/clash-core/`hostname`
    # cp /vagrant/clash-core/`hostname`/.bashrc /vagrant/clash-core/`hostname`/.bashrc.bak

    # cp /vagrant/clash-core/clash.service /etc/systemd/system
    # systemctl daemon-reload
    # systemctl start clash
    # systemctl enable clash
    # systemctl restart clash

    # sed -i '0,/^$/s/^$/\nalias proxy=\"export http_proxy=http:\/\/127.0.0.1:7890;export https_proxy=http:\/\/127.0.0.1:7890\"\nalias unproxy=\"unset http_proxy;unset https_proxy\"\n/g' /vagrant/clash-core/`hostname`/.bashrc
