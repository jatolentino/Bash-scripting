#!/usr/bin
mount /dev/sr0 /mnt
mkdir /rpms
cp -r /mnt/BaseOS.repo /rpms/ 
echo "
[BaseOS]
name= BaseOS repo from my disk
baseurl= file:///rpm/BaseOS
enabled = 1
gpgcheck = 0
gpgkey = file:///etc/pki/rpm-gpg/RPM-GPG-KEY-release" > /etc/yum.repos.d/BaseOS.repo
