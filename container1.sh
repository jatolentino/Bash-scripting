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


