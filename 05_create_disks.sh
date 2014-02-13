(echo n; echo p; echo 1; echo ; echo; echo w) | fdisk /dev/xvdf
(echo n; echo p; echo 1; echo ; echo; echo w) | fdisk /dev/xvdg
(echo n; echo p; echo 1; echo ; echo; echo w) | fdisk /dev/xvdh
(echo n; echo p; echo 1; echo ; echo; echo w) | fdisk /dev/xvdi

mkfs -t ext4 -m 1 -O dir_index,extent,sparse_super /dev/xvdf1
mkfs -t ext4 -m 1 -O dir_index,extent,sparse_super /dev/xvdg1
mkfs -t ext4 -m 1 -O dir_index,extent,sparse_super /dev/xvdh1
mkfs -t ext4 -m 1 -O dir_index,extent,sparse_super /dev/xvdi1

mkdir /u01 /u02 /u03 /u04

echo "/dev/xvdf1	/u01	ext4	noatime,nodiratime	1 2" >> /etc/fstab
echo "/dev/xvdg1	/u02	ext4	noatime,nodiratime	1 2" >> /etc/fstab
echo "/dev/xvdh1	/u03	ext4	noatime,nodiratime	1 2" >> /etc/fstab
echo "/dev/xvdi1	/u04	ext4	noatime,nodiratime	1 2" >> /etc/fstab

mount /u01
mount /u02
mount /u03
mount /u04
