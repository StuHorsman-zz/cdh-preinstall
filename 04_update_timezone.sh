cp /etc/sysconfig/clock /etc/sysconfig/_clock.orig.`date +%d%m%y`
cat > /etc/sysconfig/clock <<EOF
ZONE="Australia/Sydney"
UTC=True
EOF

ln -sf /usr/share/zoneinfo/Australia/Sydney /etc/localtime
chkconfig ntpd on
service ntpd start
