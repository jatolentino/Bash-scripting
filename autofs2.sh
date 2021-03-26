#!/bin/bash
# PC IP 192.168.1.101
# input the other pc IP, directory shared in autofs1.sh is /Dirshare
yum install autofs* nfs-utils*
showmount -e 192.168.1.102
mkdir -p /remoteuser/Dirshare
echo "/- /etc/auto.remote" >> /etc/auto.master.d/remote.autofs
echo "/remoteuser/Dirshare -rw,sync, 192.168.1.102:/Dirshare" >> /etc/auto.remote
systemctl enable --now autofs
