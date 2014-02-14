#!/bin/bash
yum install tigervnc-* -y

cp /etc/sysconfig/vncservers /etc/sysconfig/_vncservers.orig.`date +%d%m%y`
cp /home/ec2-user/cloudera/files/vncservers /etc/sysconfig/vncservers
