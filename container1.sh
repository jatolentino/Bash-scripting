#!/usr/bin
useradd wallah
passwd wallah
yum install - container-tools -y
exit

ssh wallah@192.168.1.101
podman login redhat.io.registry
# input user and pass
podman pull redhat.io.registry/rsyslog
sudo su

cd /var/log
mkdir journal
systemctl systemd-journald.service
cd journal
ls
exit

mkdir ~/containter-logserver
cp /var/log/ ~/contianer-logserver
podman run -d --name logserver /home/wallah/container-logserver/:/var/log/:Z rsyslog
podman ps

mkdir ~/.config/systemd/user
cd ~/.config/systemd/user
podman generate systemd logserver > container-logserver.service
vim container-logserver.service
WantedBy=default.target
