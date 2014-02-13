cat /etc/selinux/config | sed 's/SELINUX=enforcing/SELINUX=disabled/' > /tmp/selinux
cp /etc/selinux/config /etc/selinux/_config.orig.`date +%d%m%y`
mv /tmp/selinux /etc/selinux/config
