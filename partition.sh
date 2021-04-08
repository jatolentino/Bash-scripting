#!/bin/bash

echo "Installing dosfstools"
yum install -y dosfstools
echo "Please print a device sdb or sdc that you want to be partitioned for Windows and Linux compatibility"
read sdVar
echo "Please print the number of the partition, 1-4"
read sdNum
echo "Please print the size you want your partition to be, ex 200M, 5G (no more than 15G)"
read sdSize
(echo o; echo n; echo p; echo $sdNum; echo; echo +$sdSize; echo t; echo $sdNum; echo c; echo w) | fdisk /dev/$sdVar
lsblk
echo "Your device has been partitonated"
fdisk -l /dev/$sdvar$sdNum
