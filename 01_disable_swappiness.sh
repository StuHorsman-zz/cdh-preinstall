echo 0 > /proc/sys/vm/swappiness
cat >> /etc/sysctl.conf <<EOF
# Set swappiness to 0 CDH5b2
vm.swappiness = 0
EOF
