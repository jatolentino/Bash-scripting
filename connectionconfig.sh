#!/bin/bash
nmcli c m `nmcli -g name c s` ipv4.address 192.168.1.101/24 ipv4.gateway 192.168.1.1 ipv4.dns 192.168.1.1 ipv4.method manual connection.autoconnect yes
nmcli c reload
ifconfig
hostnamectl set-hostname node1-rhel.example.com
hostnamectl
init 6
