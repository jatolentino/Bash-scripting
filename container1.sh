#!/usr/bin
useradd wallah
passwd wallah
yum install - container-tools -y
exit

ssh wallah@192.168.1.101
podman login redhat.io.registry
# include user and pass
podman pull redhat.io.registry/rsyslog

